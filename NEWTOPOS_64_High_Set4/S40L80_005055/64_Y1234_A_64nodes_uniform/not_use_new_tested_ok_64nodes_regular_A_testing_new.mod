set NODES;

param SUPP1{NODES};

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



subject to flowsum{(i,j) in ARCS_ED}:
  FLOWSUM[i,j] = FLOW1[i,j] + FLOW2[i,j] + FLOW3[i,j] + FLOW4[i,j] + FLOW5[i,j] + FLOW6[i,j] + FLOW7[i,j] + FLOW8[i,j] + FLOW9[i,j] + FLOW10[i,j] + FLOW11[i,j] + FLOW12[i,j] + FLOW13[i,j] + FLOW14[i,j] + FLOW15[i,j] + FLOW16[i,j] + FLOW17[i,j] + FLOW18[i,j] + FLOW19[i,j] + FLOW20[i,j] + FLOW21[i,j] + FLOW22[i,j] + FLOW23[i,j] + FLOW24[i,j] + FLOW25[i,j] + FLOW26[i,j] + FLOW27[i,j] + FLOW28[i,j] + FLOW29[i,j] + FLOW30[i,j] + FLOW31[i,j] + FLOW32[i,j] + FLOW33[i,j] + FLOW34[i,j] + FLOW35[i,j] + FLOW36[i,j] + FLOW37[i,j] + FLOW38[i,j] + FLOW39[i,j] + FLOW40[i,j] + FLOW41[i,j] + FLOW42[i,j] + FLOW43[i,j] + FLOW44[i,j] + FLOW45[i,j] + FLOW46[i,j] + FLOW47[i,j] + FLOW48[i,j] + FLOW49[i,j] + FLOW50[i,j] + FLOW51[i,j] + FLOW52[i,j] + FLOW53[i,j] + FLOW54[i,j] + FLOW55[i,j] + FLOW56[i,j] + FLOW57[i,j] + FLOW58[i,j] + FLOW59[i,j] + FLOW60[i,j] + FLOW61[i,j] + FLOW62[i,j] + FLOW63[i,j] + FLOW64[i,j];
  