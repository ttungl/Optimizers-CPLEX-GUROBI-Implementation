set NODES;

param SUPP1{NODES};
param SUPP2{NODES};
param SUPP3{NODES};
param SUPP4{NODES};
param SUPP5{NODES};
param SUPP6{NODES};
param SUPP7{NODES};
param SUPP8{NODES};
param SUPP9{NODES};
param SUPP10{NODES};
param SUPP11{NODES};
param SUPP12{NODES};
param SUPP13{NODES};
param SUPP14{NODES};
param SUPP15{NODES};
param SUPP16{NODES};
param SUPP17{NODES};
param SUPP18{NODES};
param SUPP19{NODES};
param SUPP20{NODES};
param SUPP21{NODES};
param SUPP22{NODES};
param SUPP23{NODES};
param SUPP24{NODES};
param SUPP25{NODES};
param SUPP26{NODES};
param SUPP27{NODES};
param SUPP28{NODES};
param SUPP29{NODES};
param SUPP30{NODES};
param SUPP31{NODES};
param SUPP32{NODES};
param SUPP33{NODES};
param SUPP34{NODES};
param SUPP35{NODES};
param SUPP36{NODES};
param SUPP37{NODES};
param SUPP38{NODES};
param SUPP39{NODES};
param SUPP40{NODES};
param SUPP41{NODES};
param SUPP42{NODES};
param SUPP43{NODES};
param SUPP44{NODES};
param SUPP45{NODES};
param SUPP46{NODES};
param SUPP47{NODES};
param SUPP48{NODES};
param SUPP49{NODES};
param SUPP50{NODES};
param SUPP51{NODES};
param SUPP52{NODES};
param SUPP53{NODES};
param SUPP54{NODES};
param SUPP55{NODES};
param SUPP56{NODES};
param SUPP57{NODES};
param SUPP58{NODES};
param SUPP59{NODES};
param SUPP60{NODES};
param SUPP61{NODES};
param SUPP62{NODES};
param SUPP63{NODES};
param SUPP64{NODES};


set LONGLINKS within {NODES cross NODES};
set ARCS within {NODES cross NODES};

set ARCS_ED := {i in NODES, j in NODES: ((i,j) in ARCS or (j,i) in ARCS)};
set LONGLINKS_ED := {i in NODES, j in NODES: ((i,j) in LONGLINKS or (j,i) in LONGLINKS)};

param CAP{i in NODES, j in NODES: ((i,j) in ARCS or (j,i) in ARCS)} >= 0;
param COST{i in NODES, j in NODES: ((i,j) in ARCS or (j,i) in ARCS)} >= 0;

var FLOW1{ARCS_ED} >=0;
var FLOW2{ARCS_ED} >=0;
var FLOW3{ARCS_ED} >=0;
var FLOW4{ARCS_ED} >=0;
var FLOW5{ARCS_ED} >=0;
var FLOW6{ARCS_ED} >=0;
var FLOW7{ARCS_ED} >=0;
var FLOW8{ARCS_ED} >=0;
var FLOW9{ARCS_ED} >=0;
var FLOW10{ARCS_ED} >=0;
var FLOW11{ARCS_ED} >=0;
var FLOW12{ARCS_ED} >=0;
var FLOW13{ARCS_ED} >=0;
var FLOW14{ARCS_ED} >=0;
var FLOW15{ARCS_ED} >=0;
var FLOW16{ARCS_ED} >=0;
var FLOW17{ARCS_ED} >=0;
var FLOW18{ARCS_ED} >=0;
var FLOW19{ARCS_ED} >=0;
var FLOW20{ARCS_ED} >=0;
var FLOW21{ARCS_ED} >=0;
var FLOW22{ARCS_ED} >=0;
var FLOW23{ARCS_ED} >=0;
var FLOW24{ARCS_ED} >=0;
var FLOW25{ARCS_ED} >=0;
var FLOW26{ARCS_ED} >=0;
var FLOW27{ARCS_ED} >=0;
var FLOW28{ARCS_ED} >=0;
var FLOW29{ARCS_ED} >=0;
var FLOW30{ARCS_ED} >=0;
var FLOW31{ARCS_ED} >=0;
var FLOW32{ARCS_ED} >=0;
var FLOW33{ARCS_ED} >=0;
var FLOW34{ARCS_ED} >=0;
var FLOW35{ARCS_ED} >=0;
var FLOW36{ARCS_ED} >=0;
var FLOW37{ARCS_ED} >=0;
var FLOW38{ARCS_ED} >=0;
var FLOW39{ARCS_ED} >=0;
var FLOW40{ARCS_ED} >=0;
var FLOW41{ARCS_ED} >=0;
var FLOW42{ARCS_ED} >=0;
var FLOW43{ARCS_ED} >=0;
var FLOW44{ARCS_ED} >=0;
var FLOW45{ARCS_ED} >=0;
var FLOW46{ARCS_ED} >=0;
var FLOW47{ARCS_ED} >=0;
var FLOW48{ARCS_ED} >=0;
var FLOW49{ARCS_ED} >=0;
var FLOW50{ARCS_ED} >=0;
var FLOW51{ARCS_ED} >=0;
var FLOW52{ARCS_ED} >=0;
var FLOW53{ARCS_ED} >=0;
var FLOW54{ARCS_ED} >=0;
var FLOW55{ARCS_ED} >=0;
var FLOW56{ARCS_ED} >=0;
var FLOW57{ARCS_ED} >=0;
var FLOW58{ARCS_ED} >=0;
var FLOW59{ARCS_ED} >=0;
var FLOW60{ARCS_ED} >=0;
var FLOW61{ARCS_ED} >=0;
var FLOW62{ARCS_ED} >=0;
var FLOW63{ARCS_ED} >=0;
var FLOW64{ARCS_ED} >=0;
var FLOWSUM{ARCS_ED} >=0;

minimize cost_of_arcs:
	sum{(i,j) in ARCS} COST[i,j]*(FLOW1[i,j] +FLOW1[j,i]+ FLOW2[i,j]+ FLOW2[j,i]+ FLOW3[i,j]+ FLOW3[j,i]+ FLOW4[i,j]+ FLOW4[j,i]+ FLOW5[i,j]+ FLOW5[j,i]+ FLOW6[i,j]+ FLOW6[j,i]+ FLOW7[i,j]+ FLOW7[j,i]+ FLOW8[i,j]+ FLOW8[j,i]+ FLOW9[i,j]+ FLOW9[j,i]+ FLOW10[i,j]+ FLOW10[j,i]+ FLOW11[i,j]+ FLOW11[j,i]+ FLOW12[i,j]+ FLOW12[j,i]+ FLOW13[i,j]+ FLOW13[j,i]+ FLOW14[i,j]+ FLOW14[j,i]+ FLOW15[i,j]+ FLOW15[j,i]+ FLOW16[i,j]+ FLOW16[j,i]+ FLOW17[i,j]+ FLOW17[j,i]+ FLOW18[i,j]+ FLOW18[j,i]+ FLOW19[i,j]+ FLOW19[j,i]+ FLOW20[i,j]+ FLOW20[j,i]+ FLOW21[i,j]+ FLOW21[j,i]+ FLOW22[i,j]+ FLOW22[j,i]+ FLOW23[i,j]+ FLOW23[j,i]+ FLOW24[i,j]+ FLOW24[j,i]+ FLOW25[i,j]+ FLOW25[j,i]+ FLOW26[i,j]+ FLOW26[j,i]+ FLOW27[i,j]+ FLOW27[j,i]+ FLOW28[i,j]+ FLOW28[j,i]+ FLOW29[i,j]+ FLOW29[j,i]+ FLOW30[i,j]+ FLOW30[j,i]+ FLOW31[i,j]+ FLOW31[j,i]+ FLOW32[i,j]+ FLOW32[j,i]+ FLOW33[i,j]+ FLOW33[j,i]+ FLOW34[i,j]+ FLOW34[j,i]+ FLOW35[i,j]+ FLOW35[j,i]+ FLOW36[i,j]+ FLOW36[j,i]+ FLOW37[i,j]+ FLOW37[j,i]+ FLOW38[i,j]+ FLOW38[j,i]+ FLOW39[i,j]+ FLOW39[j,i]+ FLOW40[i,j]+ FLOW40[j,i]+ FLOW41[i,j]+ FLOW41[j,i]+ FLOW42[i,j]+ FLOW42[j,i]+ FLOW43[i,j]+ FLOW43[j,i]+ FLOW44[i,j]+ FLOW44[j,i]+ FLOW45[i,j]+ FLOW45[j,i]+ FLOW46[i,j]+ FLOW46[j,i]+ FLOW47[i,j]+ FLOW47[j,i]+ FLOW48[i,j]+ FLOW48[j,i]+ FLOW49[i,j]+ FLOW49[j,i]+ FLOW50[i,j]+ FLOW50[j,i]+ FLOW51[i,j]+ FLOW51[j,i]+ FLOW52[i,j]+ FLOW52[j,i]+ FLOW53[i,j]+ FLOW53[j,i]+ FLOW54[i,j]+ FLOW54[j,i]+ FLOW55[i,j]+ FLOW55[j,i]+ FLOW56[i,j]+ FLOW56[j,i]+ FLOW57[i,j]+ FLOW57[j,i]+ FLOW58[i,j]+ FLOW58[j,i]+ FLOW59[i,j]+ FLOW59[j,i]+ FLOW60[i,j]+ FLOW60[j,i]+ FLOW61[i,j]+ FLOW61[j,i]+ FLOW62[i,j]+ FLOW62[j,i]+ FLOW63[i,j]+ FLOW63[j,i]+ FLOW64[i,j] + FLOW64[j,i]);

subject to c0{(i,j) in ARCS}:
 	FLOW1[i,j] +FLOW1[j,i]+ FLOW2[i,j]+ FLOW2[j,i]+ FLOW3[i,j]+ FLOW3[j,i]+ FLOW4[i,j]+ FLOW4[j,i]+ FLOW5[i,j]+ FLOW5[j,i]+ FLOW6[i,j]+ FLOW6[j,i]+ FLOW7[i,j]+ FLOW7[j,i]+ FLOW8[i,j]+ FLOW8[j,i]+ FLOW9[i,j]+ FLOW9[j,i]+ FLOW10[i,j]+ FLOW10[j,i]+ FLOW11[i,j]+ FLOW11[j,i]+ FLOW12[i,j]+ FLOW12[j,i]+ FLOW13[i,j]+ FLOW13[j,i]+ FLOW14[i,j]+ FLOW14[j,i]+ FLOW15[i,j]+ FLOW15[j,i]+ FLOW16[i,j]+ FLOW16[j,i]+ FLOW17[i,j]+ FLOW17[j,i]+ FLOW18[i,j]+ FLOW18[j,i]+ FLOW19[i,j]+ FLOW19[j,i]+ FLOW20[i,j]+ FLOW20[j,i]+ FLOW21[i,j]+ FLOW21[j,i]+ FLOW22[i,j]+ FLOW22[j,i]+ FLOW23[i,j]+ FLOW23[j,i]+ FLOW24[i,j]+ FLOW24[j,i]+ FLOW25[i,j]+ FLOW25[j,i]+ FLOW26[i,j]+ FLOW26[j,i]+ FLOW27[i,j]+ FLOW27[j,i]+ FLOW28[i,j]+ FLOW28[j,i]+ FLOW29[i,j]+ FLOW29[j,i]+ FLOW30[i,j]+ FLOW30[j,i]+ FLOW31[i,j]+ FLOW31[j,i]+ FLOW32[i,j]+ FLOW32[j,i]+ FLOW33[i,j]+ FLOW33[j,i]+ FLOW34[i,j]+ FLOW34[j,i]+ FLOW35[i,j]+ FLOW35[j,i]+ FLOW36[i,j]+ FLOW36[j,i]+ FLOW37[i,j]+ FLOW37[j,i]+ FLOW38[i,j]+ FLOW38[j,i]+ FLOW39[i,j]+ FLOW39[j,i]+ FLOW40[i,j]+ FLOW40[j,i]+ FLOW41[i,j]+ FLOW41[j,i]+ FLOW42[i,j]+ FLOW42[j,i]+ FLOW43[i,j]+ FLOW43[j,i]+ FLOW44[i,j]+ FLOW44[j,i]+ FLOW45[i,j]+ FLOW45[j,i]+ FLOW46[i,j]+ FLOW46[j,i]+ FLOW47[i,j]+ FLOW47[j,i]+ FLOW48[i,j]+ FLOW48[j,i]+ FLOW49[i,j]+ FLOW49[j,i]+ FLOW50[i,j]+ FLOW50[j,i]+ FLOW51[i,j]+ FLOW51[j,i]+ FLOW52[i,j]+ FLOW52[j,i]+ FLOW53[i,j]+ FLOW53[j,i]+ FLOW54[i,j]+ FLOW54[j,i]+ FLOW55[i,j]+ FLOW55[j,i]+ FLOW56[i,j]+ FLOW56[j,i]+ FLOW57[i,j]+ FLOW57[j,i]+ FLOW58[i,j]+ FLOW58[j,i]+ FLOW59[i,j]+ FLOW59[j,i]+ FLOW60[i,j]+ FLOW60[j,i]+ FLOW61[i,j]+ FLOW61[j,i]+ FLOW62[i,j]+ FLOW62[j,i]+ FLOW63[i,j]+ FLOW63[j,i]+ FLOW64[i,j] + FLOW64[j,i] <= CAP[i,j];


subject to c1{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW1[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW1[i,j] = SUPP1[i];

subject to c2{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW2[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW2[i,j] = SUPP2[i];

subject to c3{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW3[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW3[i,j] = SUPP3[i];

subject to c4{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW4[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW4[i,j] = SUPP4[i];

subject to c5{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW5[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW5[i,j] = SUPP5[i];

subject to c6{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW6[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW6[i,j] = SUPP6[i];

subject to c7{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW7[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW7[i,j] = SUPP7[i];

subject to c8{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW8[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW8[i,j] = SUPP8[i];

subject to c9{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW9[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW9[i,j] = SUPP9[i];

subject to c10{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW10[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW10[i,j] = SUPP10[i];

subject to c11{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW11[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW11[i,j] = SUPP11[i];

subject to c12{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW12[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW12[i,j] = SUPP12[i];

subject to c13{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW13[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW13[i,j] = SUPP13[i];

subject to c14{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW14[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW14[i,j] = SUPP14[i];

subject to c15{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW15[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW15[i,j] = SUPP15[i];

subject to c16{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW16[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW16[i,j] = SUPP16[i];

subject to c17{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW17[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW17[i,j] = SUPP17[i];

subject to c18{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW18[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW18[i,j] = SUPP18[i];

subject to c19{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW19[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW19[i,j] = SUPP19[i];

subject to c20{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW20[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW20[i,j] = SUPP20[i];

subject to c21{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW21[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW21[i,j] = SUPP21[i];

subject to c22{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW22[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW22[i,j] = SUPP22[i];

subject to c23{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW23[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW23[i,j] = SUPP23[i];

subject to c24{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW24[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW24[i,j] = SUPP24[i];

subject to c25{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW25[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW25[i,j] = SUPP25[i];

subject to c26{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW26[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW26[i,j] = SUPP26[i];

subject to c27{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW27[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW27[i,j] = SUPP27[i];

subject to c28{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW28[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW28[i,j] = SUPP28[i];

subject to c29{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW29[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW29[i,j] = SUPP29[i];

subject to c30{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW30[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW30[i,j] = SUPP30[i];

subject to c31{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW31[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW31[i,j] = SUPP31[i];

subject to c32{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW32[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW32[i,j] = SUPP32[i];

subject to c33{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW33[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW33[i,j] = SUPP33[i];

subject to c34{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW34[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW34[i,j] = SUPP34[i];

subject to c35{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW35[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW35[i,j] = SUPP35[i];

subject to c36{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW36[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW36[i,j] = SUPP36[i];

subject to c37{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW37[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW37[i,j] = SUPP37[i];

subject to c38{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW38[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW38[i,j] = SUPP38[i];

subject to c39{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW39[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW39[i,j] = SUPP39[i];

subject to c40{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW40[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW40[i,j] = SUPP40[i];

subject to c41{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW41[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW41[i,j] = SUPP41[i];

subject to c42{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW42[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW42[i,j] = SUPP42[i];

subject to c43{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW43[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW43[i,j] = SUPP43[i];

subject to c44{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW44[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW44[i,j] = SUPP44[i];

subject to c45{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW45[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW45[i,j] = SUPP45[i];

subject to c46{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW46[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW46[i,j] = SUPP46[i];

subject to c47{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW47[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW47[i,j] = SUPP47[i];

subject to c48{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW48[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW48[i,j] = SUPP48[i];

subject to c49{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW49[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW49[i,j] = SUPP49[i];

subject to c50{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW50[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW50[i,j] = SUPP50[i];

subject to c51{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW51[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW51[i,j] = SUPP51[i];

subject to c52{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW52[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW52[i,j] = SUPP52[i];

subject to c53{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW53[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW53[i,j] = SUPP53[i];

subject to c54{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW54[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW54[i,j] = SUPP54[i];

subject to c55{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW55[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW55[i,j] = SUPP55[i];

subject to c56{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW56[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW56[i,j] = SUPP56[i];

subject to c57{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW57[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW57[i,j] = SUPP57[i];

subject to c58{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW58[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW58[i,j] = SUPP58[i];

subject to c59{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW59[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW59[i,j] = SUPP59[i];

subject to c60{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW60[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW60[i,j] = SUPP60[i];

subject to c61{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW61[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW61[i,j] = SUPP61[i];

subject to c62{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW62[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW62[i,j] = SUPP62[i];

subject to c63{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW63[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW63[i,j] = SUPP63[i];

subject to c64{i in NODES}:
-sum{j in NODES: (j,i) in ARCS_ED} FLOW64[j,i] + sum{j in NODES: (i,j) in ARCS_ED} FLOW64[i,j] = SUPP64[i];

subject to flowsum{(i,j) in ARCS_ED}:
  FLOWSUM[i,j] = FLOW1[i,j] + FLOW2[i,j] + FLOW3[i,j] + FLOW4[i,j] + FLOW5[i,j] + FLOW6[i,j] + FLOW7[i,j] + FLOW8[i,j] + FLOW9[i,j] + FLOW10[i,j] + FLOW11[i,j] + FLOW12[i,j] + FLOW13[i,j] + FLOW14[i,j] + FLOW15[i,j] + FLOW16[i,j] + FLOW17[i,j] + FLOW18[i,j] + FLOW19[i,j] + FLOW20[i,j] + FLOW21[i,j] + FLOW22[i,j] + FLOW23[i,j] + FLOW24[i,j] + FLOW25[i,j] + FLOW26[i,j] + FLOW27[i,j] + FLOW28[i,j] + FLOW29[i,j] + FLOW30[i,j] + FLOW31[i,j] + FLOW32[i,j] + FLOW33[i,j] + FLOW34[i,j] + FLOW35[i,j] + FLOW36[i,j] + FLOW37[i,j] + FLOW38[i,j] + FLOW39[i,j] + FLOW40[i,j] + FLOW41[i,j] + FLOW42[i,j] + FLOW43[i,j] + FLOW44[i,j] + FLOW45[i,j] + FLOW46[i,j] + FLOW47[i,j] + FLOW48[i,j] + FLOW49[i,j] + FLOW50[i,j] + FLOW51[i,j] + FLOW52[i,j] + FLOW53[i,j] + FLOW54[i,j] + FLOW55[i,j] + FLOW56[i,j] + FLOW57[i,j] + FLOW58[i,j] + FLOW59[i,j] + FLOW60[i,j] + FLOW61[i,j] + FLOW62[i,j] + FLOW63[i,j] + FLOW64[i,j];
  