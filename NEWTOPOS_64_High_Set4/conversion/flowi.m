clear; clc;

fid = fopen('output_each_SUPP_Runfile_solver.txt','wt');

num_cols =64;
for i=1:num_cols
	fprintf(fid,'print "+++++++++"; \n');
	fprintf(fid,'print "For SUPP%d : links utilization";\n',i);
	fprintf(fid,'print "+++++++++"; \n');
	fprintf(fid,'for {(i,j) in ARCS_ED} { \n');
	fprintf(fid,'   if FLOW%d[i,j]>0 then {\n',i);
	fprintf(fid,'        printf "flow%d',i); 
	fprintf(fid,' _d '); fprintf(fid,'_d: '); fprintf(fid,'_d '); fprintf(fid,'_n" '); fprintf(fid,', it, jt,');
	fprintf(fid,' FLOW%d[i,j];',i);
	fprintf(fid,'\n');
	fprintf(fid,'   } \n');
	fprintf(fid,'} \n');
	fprintf(fid,'\n');
end	

fclose(fid);

% print "+++++++++";
% print "For SUPP1 : Links utilization";
% print "+++++++++";
% for {(i,j) in ARCS_ED} {		
% 	if FLOW1[i,j]>0 then {
% 		printf "flow1 %d %d: %d\n", i, j, FLOW1[i,j];	
% 	}		
% }