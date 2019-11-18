clear; clc;

% Read inputs:
% 	a. param SUPP_i
% 	b. output_of_solver

% Output:
% 	a. matrix of output_of_solver.
% 	b. output path traffic to file.

% Description
% Step1: From the solver's output file, construct matrix A.
% Step2: Search all available paths from A, add traffic of sdpair to paths found in A.

%--------------------------------------
num_nodes = 64;

A = zeros(num_nodes, num_nodes);
% construct matrix A from the solver's output.

fid1 = fopen('SOLVER_RESULT/cplex_topoD_S40L80_IR_0.25_SUPP1.txt');
fid2 = fopen('SOLVER_RESULT/output_cplex_topoD_S40L80_IR_0.25_SUPP1.txt','wt');
% -----

tline1 = fgetl(fid1);
[rowsA,colsA] = size(A);
counter = 0;
counter_1 = 0;
counter_2 = 0;
counter_t = 0;
suppi_src = cell(0); suppi_dst = cell(0); % reset
total_value=0;

while counter ~= num_nodes
	counter = counter+1;
	% read solver's result (tline1) and update to matrix A.
	while ischar(tline1)
		if tline1(1) == 't'
			counter_t = counter_t +1;
			% read traffic (tline)
			fid = fopen('SUPPi/SUPP025.txt');
			
			tline = fgetl(fid);
			while ischar(tline)
				if tline(1) == 't'
					counter_1 = counter_1 +1;
					if counter_1 == counter_t % print path
						display('counter_1'); disp(counter_1);
						display('counter_t'); disp(counter_t);
						C = cell2mat(suppi_src); % convert cell to mat.
						rowsize_C = size(C,1);

						dst_position = suppi_dst(1,1);
						dst_value = suppi_dst(1,2);
						
						ii=0;
						while ii ~= rowsize_C
							ii = ii +1;
							% src snk val
							path1 = pathbetweennodesv2(A, dst_position, C(ii,1), -C(ii,2), false);

							% convert path1 from cell to matrix and put into path2
							% display('path1'); disp(path1);
							[rowpath1 colpath1] = size(path1);

							if rowpath1 ~=0
								if rowpath1 ==1
									path2=cell2mat(path1);
								else
									path2 = cell2mat(path1(1));	
								end
							end

							path2_src=0; path2_dst=0; path2_tem=0;
							[rowpath2 path2_size] = size(path2);
							countpath2 = 0;

							% update A
							countpath2 =0;
							for k =1:path2_size-1
								countpath2 = countpath2 +1;
								if countpath2 ==1
									path2_src = path2(1,k);
									path2_dst = path2(1,k+1);
								else
									path2_src = path2_tem;
									path2_dst = path2(1,k+1);
								end
								path2_tem = path2_dst;
								
								% update A
								for i=1:rowsA
									for j=1:colsA
										if i== path2_src && j== path2_dst && A(i,j)>0 && (A(i,j)+C(ii,2))>=0
											A(i,j) = A(i,j) + C(ii,2); % subtract the traffic of sdpair.
											
										end  							
									end
								end
							end	

							% disp
							if path2_size ~=0 
								% display('dst_position '); disp(dst_position);
								% display('src_position '); disp(C(ii,1));
								% display('src_value '); disp(-C(ii,2));
								
								% Append path2 = [path traffic]
								% Note: path2(1)=source; path2(n-1)= dst; path2(n)= traffic. 
								path2(1,end+1) = -C(ii,2);
								% display('path2 '); 
								disp(path2(1,:));

								iii=0;
								while iii~=size(path2(1,:),1)
									iii=iii+1;
									% output: source dest path its_traffic
									% path2{iii} = [src_org dst_org path2{ii}];
									fprintf(fid2, '%2d ', path2(1,:));
									fprintf(fid2, '\n');
								end

								total_value = total_value - C(ii,2);
							end
						end

						% suppi_src = cell(0); suppi_dst = cell(0); % reset 
						break;
					end
					suppi_src = cell(0); suppi_dst = cell(0); % reset

				else
					% append the traffic to suppi_src and suppi_dst.
					% only one suppi_dst and multiple suppi_src.
					[n v] = strread(tline, '%d %d', 'delimiter', ' ');
					
					if v > 0
						suppi_dst = n;
						suppi_dst(end+1) = v;
					else
						node_traffic = n;
						node_traffic(end+1) = v;
						suppi_src = [suppi_src; {node_traffic}];
						node_traffic=0;
					end
				end
				tline = fgetl(fid); % go next
			end
			counter_1 = 0; % reset
			A = zeros(num_nodes, num_nodes); % reset
			display(total_value); total_value=0; %reset
			% C=0; path1=0; path2=0;
			fclose(fid);


		else
			[s d v] = strread(tline1, '%d %d %d','delimiter',' :'); % eliminate ":" and " ";  
			% update to matrix A
			for i = 1:rowsA
				for j = 1:colsA
					if s==i && d == j
						A(s,d) = v; % assign value to adjacent matrix A.
					end
				end
			end
		end
		tline1 = fgetl(fid1); % next line	
	end
end

fclose(fid1);
fclose(fid2);



% --- end of file