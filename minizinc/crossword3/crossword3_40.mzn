%
% Crossword problem '23.01, 23 x 23' in MiniZinc.
%
% (generated Sat Sep 24 08:54:24 2011 by `make_crossword.pl 40 1` ).
%
% This crossword model was 
%
% This is problem '23.01, 23 x 23' from the Gecode crossword example:
%   http://www.gecode.org/doc-latest/reference/crossword_8cpp_source.html
% 
% 
% This MiniZinc model was created by Hakan Kjellerstrand, hakank@bonetmail.com
% See also my MiniZinc page: http://www.hakank.org/minizinc
%

%
% Gecode problem to solve (40): 23.01, 23 x 23
% 
%   _ _ _ _ _ _ * _ _ _ _ _ _ * _ _ _ _ * _ _ _ _
%   _ _ _ _ _ _ * _ _ _ _ _ _ * _ _ _ _ * _ _ _ _
%   _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
%   _ _ _ _ * _ _ _ * * _ _ _ _ * _ _ _ _ _ _ _ _
%   _ _ _ * _ _ _ _ _ _ _ _ _ _ _ * * _ _ _ _ _ _
%   * * * * _ _ _ * _ _ _ * _ _ _ * _ _ _ _ * * *
%   _ _ _ _ _ _ * _ _ _ * * * _ _ _ _ _ * _ _ _ _
%   _ _ _ _ _ * _ _ _ _ _ * _ _ _ _ _ * _ _ _ _ _
%   _ _ _ _ * _ _ _ * * _ _ _ _ _ _ * _ _ _ _ _ _
%   _ _ _ _ _ _ _ * _ _ _ _ _ _ _ * _ _ _ _ _ _ _
%   _ _ _ _ _ _ * _ _ _ _ _ _ _ * _ _ _ * _ _ _ _
%   * * * _ _ _ _ _ _ _ * * * _ _ _ _ _ _ _ * * *
%   _ _ _ _ * _ _ _ * _ _ _ _ _ _ _ * _ _ _ _ _ _
%   _ _ _ _ _ _ _ * _ _ _ _ _ _ _ * _ _ _ _ _ _ _
%   _ _ _ _ _ _ * _ _ _ _ _ _ * * _ _ _ * _ _ _ _
%   _ _ _ _ _ * _ _ _ _ _ * _ _ _ _ _ * _ _ _ _ _
%   _ _ _ _ * _ _ _ _ _ * * * _ _ _ * _ _ _ _ _ _
%   * * * _ _ _ _ * _ _ _ * _ _ _ * _ _ _ * * * *
%   _ _ _ _ _ _ * * _ _ _ _ _ _ _ _ _ _ _ * _ _ _
%   _ _ _ _ _ _ _ _ * _ _ _ _ * * _ _ _ * _ _ _ _
%   _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
%   _ _ _ _ * _ _ _ _ * _ _ _ _ _ _ * _ _ _ _ _ _
%   _ _ _ _ * _ _ _ _ * _ _ _ _ _ _ * _ _ _ _ _ _

include "crossword3.mzn"; 

problem_name = "23.01, 23 x 23";


% number of letters to assign
N = 440;


% distinct words
require_distinct_words = 1;

constraint
  table([L[1], L[2], L[3], L[4], L[5], L[6]], words6) 
/\ table([L[7], L[8], L[9], L[10], L[11], L[12]], words6) 
/\ table([L[13], L[14], L[15], L[16]], words4) 
/\ table([L[17], L[18], L[19], L[20]], words4) 
/\ table([L[21], L[22], L[23], L[24], L[25], L[26]], words6) 
/\ table([L[27], L[28], L[29], L[30], L[31], L[32]], words6) 
/\ table([L[33], L[34], L[35], L[36]], words4) 
/\ table([L[37], L[38], L[39], L[40]], words4) 
/\ table([L[41], L[42], L[43], L[44], L[45], L[46], L[47], L[48], L[49], L[50], L[51], L[52], L[53], L[54], L[55], L[56], L[57], L[58], L[59], L[60], L[61], L[62], L[63]], words23) 
/\ table([L[64], L[65], L[66], L[67]], words4) 
/\ table([L[68], L[69], L[70]], words3) 
/\ table([L[71], L[72], L[73], L[74]], words4) 
/\ table([L[75], L[76], L[77], L[78], L[79], L[80], L[81], L[82]], words8) 
/\ table([L[83], L[84], L[85]], words3) 
/\ table([L[86], L[87], L[88], L[89], L[90], L[91], L[92], L[93], L[94], L[95], L[96]], words11) 
/\ table([L[97], L[98], L[99], L[100], L[101], L[102]], words6) 
/\ table([L[103], L[104], L[105]], words3) 
/\ table([L[106], L[107], L[108]], words3) 
/\ table([L[109], L[110], L[111]], words3) 
/\ table([L[112], L[113], L[114], L[115]], words4) 
/\ table([L[116], L[117], L[118], L[119], L[120], L[121]], words6) 
/\ table([L[122], L[123], L[124]], words3) 
/\ table([L[125], L[126], L[127], L[128], L[129]], words5) 
/\ table([L[130], L[131], L[132], L[133]], words4) 
/\ table([L[134], L[135], L[136], L[137], L[138]], words5) 
/\ table([L[139], L[140], L[141], L[142], L[143]], words5) 
/\ table([L[144], L[145], L[146], L[147], L[148]], words5) 
/\ table([L[149], L[150], L[151], L[152], L[153]], words5) 
/\ table([L[154], L[155], L[156], L[157]], words4) 
/\ table([L[158], L[159], L[160]], words3) 
/\ table([L[161], L[162], L[163], L[164], L[165], L[166]], words6) 
/\ table([L[167], L[168], L[169], L[170], L[171], L[172]], words6) 
/\ table([L[173], L[174], L[175], L[176], L[177], L[178], L[179]], words7) 
/\ table([L[180], L[181], L[182], L[183], L[184], L[185], L[186]], words7) 
/\ table([L[187], L[188], L[189], L[190], L[191], L[192], L[193]], words7) 
/\ table([L[194], L[195], L[196], L[197], L[198], L[199]], words6) 
/\ table([L[200], L[201], L[202], L[203], L[204], L[205], L[206]], words7) 
/\ table([L[207], L[208], L[209]], words3) 
/\ table([L[210], L[211], L[212], L[213]], words4) 
/\ table([L[214], L[215], L[216], L[217], L[218], L[219], L[220]], words7) 
/\ table([L[221], L[222], L[223], L[224], L[225], L[226], L[227]], words7) 
/\ table([L[228], L[229], L[230], L[231]], words4) 
/\ table([L[232], L[233], L[234]], words3) 
/\ table([L[235], L[236], L[237], L[238], L[239], L[240], L[241]], words7) 
/\ table([L[242], L[243], L[244], L[245], L[246], L[247]], words6) 
/\ table([L[248], L[249], L[250], L[251], L[252], L[253], L[254]], words7) 
/\ table([L[255], L[256], L[257], L[258], L[259], L[260], L[261]], words7) 
/\ table([L[262], L[263], L[264], L[265], L[266], L[267], L[268]], words7) 
/\ table([L[269], L[270], L[271], L[272], L[273], L[274]], words6) 
/\ table([L[275], L[276], L[277], L[278], L[279], L[280]], words6) 
/\ table([L[281], L[282], L[283]], words3) 
/\ table([L[284], L[285], L[286], L[287]], words4) 
/\ table([L[288], L[289], L[290], L[291], L[292]], words5) 
/\ table([L[293], L[294], L[295], L[296], L[297]], words5) 
/\ table([L[298], L[299], L[300], L[301], L[302]], words5) 
/\ table([L[303], L[304], L[305], L[306], L[307]], words5) 
/\ table([L[308], L[309], L[310], L[311]], words4) 
/\ table([L[312], L[313], L[314], L[315], L[316]], words5) 
/\ table([L[317], L[318], L[319]], words3) 
/\ table([L[320], L[321], L[322], L[323], L[324], L[325]], words6) 
/\ table([L[326], L[327], L[328], L[329]], words4) 
/\ table([L[330], L[331], L[332]], words3) 
/\ table([L[333], L[334], L[335]], words3) 
/\ table([L[336], L[337], L[338]], words3) 
/\ table([L[339], L[340], L[341], L[342], L[343], L[344]], words6) 
/\ table([L[345], L[346], L[347], L[348], L[349], L[350], L[351], L[352], L[353], L[354], L[355]], words11) 
/\ table([L[356], L[357], L[358]], words3) 
/\ table([L[359], L[360], L[361], L[362], L[363], L[364], L[365], L[366]], words8) 
/\ table([L[367], L[368], L[369], L[370]], words4) 
/\ table([L[371], L[372], L[373]], words3) 
/\ table([L[374], L[375], L[376], L[377]], words4) 
/\ table([L[378], L[379], L[380], L[381], L[382], L[383], L[384], L[385], L[386], L[387], L[388], L[389], L[390], L[391], L[392], L[393], L[394], L[395], L[396], L[397], L[398], L[399], L[400]], words23) 
/\ table([L[401], L[402], L[403], L[404]], words4) 
/\ table([L[405], L[406], L[407], L[408]], words4) 
/\ table([L[409], L[410], L[411], L[412], L[413], L[414]], words6) 
/\ table([L[415], L[416], L[417], L[418], L[419], L[420]], words6) 
/\ table([L[421], L[422], L[423], L[424]], words4) 
/\ table([L[425], L[426], L[427], L[428]], words4) 
/\ table([L[429], L[430], L[431], L[432], L[433], L[434]], words6) 
/\ table([L[435], L[436], L[437], L[438], L[439], L[440]], words6) 
/\ table([L[1], L[21], L[41], L[64], L[83]], words5) 
/\ table([L[116], L[134], L[154], L[173], L[194]], words5) 
/\ table([L[228], L[248], L[269], L[288], L[308]], words5) 
/\ table([L[339], L[359], L[378], L[401], L[421]], words5) 
/\ table([L[2], L[22], L[42], L[65], L[84]], words5) 
/\ table([L[117], L[135], L[155], L[174], L[195]], words5) 
/\ table([L[229], L[249], L[270], L[289], L[309]], words5) 
/\ table([L[340], L[360], L[379], L[402], L[422]], words5) 
/\ table([L[3], L[23], L[43], L[66], L[85]], words5) 
/\ table([L[118], L[136], L[156], L[175], L[196]], words5) 
/\ table([L[230], L[250], L[271], L[290], L[310]], words5) 
/\ table([L[341], L[361], L[380], L[403], L[423]], words5) 
/\ table([L[4], L[24], L[44], L[67]], words4) 
/\ table([L[119], L[137], L[157], L[176], L[197], L[214], L[231], L[251], L[272], L[291], L[311], L[326], L[342], L[362], L[381], L[404], L[424]], words17) 
/\ table([L[5], L[25], L[45]], words3) 
/\ table([L[86], L[103], L[120], L[138]], words4) 
/\ table([L[177], L[198], L[215]], words3) 
/\ table([L[252], L[273], L[292]], words3) 
/\ table([L[327], L[343], L[363], L[382]], words4) 
/\ table([L[6], L[26], L[46], L[68], L[87], L[104], L[121]], words7) 
/\ table([L[158], L[178], L[199], L[216], L[232], L[253], L[274]], words7) 
/\ table([L[312], L[328], L[344], L[364], L[383], L[405], L[425]], words7) 
/\ table([L[47], L[69], L[88], L[105]], words4) 
/\ table([L[139], L[159], L[179]], words3) 
/\ table([L[217], L[233], L[254]], words3) 
/\ table([L[293], L[313], L[329]], words3) 
/\ table([L[365], L[384], L[406], L[426]], words4) 
/\ table([L[7], L[27], L[48], L[70], L[89]], words5) 
/\ table([L[122], L[140], L[160]], words3) 
/\ table([L[200], L[218], L[234]], words3) 
/\ table([L[275], L[294], L[314]], words3) 
/\ table([L[366], L[385], L[407], L[427]], words4) 
/\ table([L[8], L[28], L[49]], words3) 
/\ table([L[90], L[106], L[123], L[141]], words4) 
/\ table([L[180], L[201], L[219]], words3) 
/\ table([L[255], L[276], L[295], L[315], L[330], L[345]], words6) 
/\ table([L[386], L[408], L[428]], words3) 
/\ table([L[9], L[29], L[50]], words3) 
/\ table([L[91], L[107], L[124], L[142]], words4) 
/\ table([L[181], L[202], L[220], L[235], L[256], L[277], L[296], L[316], L[331], L[346], L[367], L[387]], words12) 
/\ table([L[10], L[30], L[51], L[71], L[92], L[108]], words6) 
/\ table([L[143], L[161], L[182], L[203]], words4) 
/\ table([L[236], L[257], L[278], L[297]], words4) 
/\ table([L[332], L[347], L[368], L[388], L[409], L[429]], words6) 
/\ table([L[11], L[31], L[52], L[72], L[93]], words5) 
/\ table([L[162], L[183], L[204]], words3) 
/\ table([L[237], L[258], L[279]], words3) 
/\ table([L[348], L[369], L[389], L[410], L[430]], words5) 
/\ table([L[12], L[32], L[53], L[73], L[94], L[109]], words6) 
/\ table([L[144], L[163], L[184], L[205]], words4) 
/\ table([L[238], L[259], L[280], L[298]], words4) 
/\ table([L[333], L[349], L[370], L[390], L[411], L[431]], words6) 
/\ table([L[54], L[74], L[95], L[110], L[125], L[145], L[164], L[185], L[206], L[221], L[239], L[260]], words12) 
/\ table([L[299], L[317], L[334], L[350]], words4) 
/\ table([L[391], L[412], L[432]], words3) 
/\ table([L[13], L[33], L[55]], words3) 
/\ table([L[96], L[111], L[126], L[146], L[165], L[186]], words6) 
/\ table([L[222], L[240], L[261]], words3) 
/\ table([L[300], L[318], L[335], L[351]], words4) 
/\ table([L[392], L[413], L[433]], words3) 
/\ table([L[14], L[34], L[56], L[75]], words4) 
/\ table([L[127], L[147], L[166]], words3) 
/\ table([L[207], L[223], L[241]], words3) 
/\ table([L[281], L[301], L[319]], words3) 
/\ table([L[352], L[371], L[393], L[414], L[434]], words5) 
/\ table([L[15], L[35], L[57], L[76]], words4) 
/\ table([L[112], L[128], L[148]], words3) 
/\ table([L[187], L[208], L[224]], words3) 
/\ table([L[262], L[282], L[302]], words3) 
/\ table([L[336], L[353], L[372], L[394]], words4) 
/\ table([L[16], L[36], L[58], L[77], L[97], L[113], L[129]], words7) 
/\ table([L[167], L[188], L[209], L[225], L[242], L[263], L[283]], words7) 
/\ table([L[320], L[337], L[354], L[373], L[395], L[415], L[435]], words7) 
/\ table([L[59], L[78], L[98], L[114]], words4) 
/\ table([L[149], L[168], L[189]], words3) 
/\ table([L[226], L[243], L[264]], words3) 
/\ table([L[303], L[321], L[338], L[355]], words4) 
/\ table([L[396], L[416], L[436]], words3) 
/\ table([L[17], L[37], L[60], L[79], L[99], L[115], L[130], L[150], L[169], L[190], L[210], L[227], L[244], L[265], L[284], L[304], L[322]], words17) 
/\ table([L[374], L[397], L[417], L[437]], words4) 
/\ table([L[18], L[38], L[61], L[80], L[100]], words5) 
/\ table([L[131], L[151], L[170], L[191], L[211]], words5) 
/\ table([L[245], L[266], L[285], L[305], L[323]], words5) 
/\ table([L[356], L[375], L[398], L[418], L[438]], words5) 
/\ table([L[19], L[39], L[62], L[81], L[101]], words5) 
/\ table([L[132], L[152], L[171], L[192], L[212]], words5) 
/\ table([L[246], L[267], L[286], L[306], L[324]], words5) 
/\ table([L[357], L[376], L[399], L[419], L[439]], words5) 
/\ table([L[20], L[40], L[63], L[82], L[102]], words5) 
/\ table([L[133], L[153], L[172], L[193], L[213]], words5) 
/\ table([L[247], L[268], L[287], L[307], L[325]], words5) 
/\ table([L[358], L[377], L[400], L[420], L[440]], words5)
;

% The segments (words)
% (0 for fill outs)
int: max_length = 23;
int: num_segments = 172;
array[1..num_segments, 1..max_length] of int: segments = array2d(1..num_segments, 1..max_length, 
[
1,2,3,4,5,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
7,8,9,10,11,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
13,14,15,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
17,18,19,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
21,22,23,24,25,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
27,28,29,30,31,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
33,34,35,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
37,38,39,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,
64,65,66,67,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
68,69,70,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
71,72,73,74,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
75,76,77,78,79,80,81,82,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
83,84,85,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
86,87,88,89,90,91,92,93,94,95,96,0,0,0,0,0,0,0,0,0,0,0,0,
97,98,99,100,101,102,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
103,104,105,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
106,107,108,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
109,110,111,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
112,113,114,115,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
116,117,118,119,120,121,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
122,123,124,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
125,126,127,128,129,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
130,131,132,133,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
134,135,136,137,138,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
139,140,141,142,143,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
144,145,146,147,148,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
149,150,151,152,153,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
154,155,156,157,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
158,159,160,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
161,162,163,164,165,166,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
167,168,169,170,171,172,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
173,174,175,176,177,178,179,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
180,181,182,183,184,185,186,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
187,188,189,190,191,192,193,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
194,195,196,197,198,199,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
200,201,202,203,204,205,206,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
207,208,209,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
210,211,212,213,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
214,215,216,217,218,219,220,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
221,222,223,224,225,226,227,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
228,229,230,231,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
232,233,234,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
235,236,237,238,239,240,241,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
242,243,244,245,246,247,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
248,249,250,251,252,253,254,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
255,256,257,258,259,260,261,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
262,263,264,265,266,267,268,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
269,270,271,272,273,274,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
275,276,277,278,279,280,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
281,282,283,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
284,285,286,287,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
288,289,290,291,292,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
293,294,295,296,297,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
298,299,300,301,302,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
303,304,305,306,307,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
308,309,310,311,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
312,313,314,315,316,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
317,318,319,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
320,321,322,323,324,325,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
326,327,328,329,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
330,331,332,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
333,334,335,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
336,337,338,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
339,340,341,342,343,344,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
345,346,347,348,349,350,351,352,353,354,355,0,0,0,0,0,0,0,0,0,0,0,0,
356,357,358,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
359,360,361,362,363,364,365,366,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
367,368,369,370,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
371,372,373,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
374,375,376,377,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,400,
401,402,403,404,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
405,406,407,408,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
409,410,411,412,413,414,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
415,416,417,418,419,420,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
421,422,423,424,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
425,426,427,428,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
429,430,431,432,433,434,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
435,436,437,438,439,440,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
1,21,41,64,83,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
116,134,154,173,194,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
228,248,269,288,308,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
339,359,378,401,421,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
2,22,42,65,84,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
117,135,155,174,195,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
229,249,270,289,309,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
340,360,379,402,422,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,23,43,66,85,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
118,136,156,175,196,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
230,250,271,290,310,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
341,361,380,403,423,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
4,24,44,67,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
119,137,157,176,197,214,231,251,272,291,311,326,342,362,381,404,424,0,0,0,0,0,0,
5,25,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
86,103,120,138,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
177,198,215,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
252,273,292,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
327,343,363,382,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
6,26,46,68,87,104,121,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
158,178,199,216,232,253,274,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
312,328,344,364,383,405,425,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
47,69,88,105,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
139,159,179,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
217,233,254,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
293,313,329,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
365,384,406,426,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
7,27,48,70,89,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
122,140,160,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
200,218,234,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
275,294,314,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
366,385,407,427,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
8,28,49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
90,106,123,141,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
180,201,219,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
255,276,295,315,330,345,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
386,408,428,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
9,29,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
91,107,124,142,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
181,202,220,235,256,277,296,316,331,346,367,387,0,0,0,0,0,0,0,0,0,0,0,
10,30,51,71,92,108,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
143,161,182,203,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
236,257,278,297,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
332,347,368,388,409,429,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
11,31,52,72,93,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
162,183,204,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
237,258,279,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
348,369,389,410,430,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
12,32,53,73,94,109,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
144,163,184,205,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
238,259,280,298,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
333,349,370,390,411,431,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
54,74,95,110,125,145,164,185,206,221,239,260,0,0,0,0,0,0,0,0,0,0,0,
299,317,334,350,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
391,412,432,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
13,33,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
96,111,126,146,165,186,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
222,240,261,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
300,318,335,351,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
392,413,433,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
14,34,56,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
127,147,166,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
207,223,241,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
281,301,319,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
352,371,393,414,434,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
15,35,57,76,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
112,128,148,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
187,208,224,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
262,282,302,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
336,353,372,394,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
16,36,58,77,97,113,129,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
167,188,209,225,242,263,283,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
320,337,354,373,395,415,435,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
59,78,98,114,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
149,168,189,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
226,243,264,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
303,321,338,355,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
396,416,436,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
17,37,60,79,99,115,130,150,169,190,210,227,244,265,284,304,322,0,0,0,0,0,0,
374,397,417,437,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
18,38,61,80,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
131,151,170,191,211,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
245,266,285,305,323,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
356,375,398,418,438,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
19,39,62,81,101,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
132,152,171,192,212,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
246,267,286,306,324,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
357,376,399,419,439,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
20,40,63,82,102,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
133,153,172,193,213,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
247,268,287,307,325,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
358,377,400,420,440,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,

]);

% Problem where each cell is assigned a unique index.
% (0 means blocked cell)
int: rows = 23;
int: cols = 23;
array[1..rows, 1..cols] of int: problem = array2d(1..rows, 1..cols,
[
1, 2, 3, 4, 5, 6, 0, 7, 8, 9, 10, 11, 12, 0, 13, 14, 15, 16, 0, 17, 18, 19, 20, 
21, 22, 23, 24, 25, 26, 0, 27, 28, 29, 30, 31, 32, 0, 33, 34, 35, 36, 0, 37, 38, 39, 40, 
41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 
64, 65, 66, 67, 0, 68, 69, 70, 0, 0, 71, 72, 73, 74, 0, 75, 76, 77, 78, 79, 80, 81, 82, 
83, 84, 85, 0, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 0, 0, 97, 98, 99, 100, 101, 102, 
0, 0, 0, 0, 103, 104, 105, 0, 106, 107, 108, 0, 109, 110, 111, 0, 112, 113, 114, 115, 0, 0, 0, 
116, 117, 118, 119, 120, 121, 0, 122, 123, 124, 0, 0, 0, 125, 126, 127, 128, 129, 0, 130, 131, 132, 133, 
134, 135, 136, 137, 138, 0, 139, 140, 141, 142, 143, 0, 144, 145, 146, 147, 148, 0, 149, 150, 151, 152, 153, 
154, 155, 156, 157, 0, 158, 159, 160, 0, 0, 161, 162, 163, 164, 165, 166, 0, 167, 168, 169, 170, 171, 172, 
173, 174, 175, 176, 177, 178, 179, 0, 180, 181, 182, 183, 184, 185, 186, 0, 187, 188, 189, 190, 191, 192, 193, 
194, 195, 196, 197, 198, 199, 0, 200, 201, 202, 203, 204, 205, 206, 0, 207, 208, 209, 0, 210, 211, 212, 213, 
0, 0, 0, 214, 215, 216, 217, 218, 219, 220, 0, 0, 0, 221, 222, 223, 224, 225, 226, 227, 0, 0, 0, 
228, 229, 230, 231, 0, 232, 233, 234, 0, 235, 236, 237, 238, 239, 240, 241, 0, 242, 243, 244, 245, 246, 247, 
248, 249, 250, 251, 252, 253, 254, 0, 255, 256, 257, 258, 259, 260, 261, 0, 262, 263, 264, 265, 266, 267, 268, 
269, 270, 271, 272, 273, 274, 0, 275, 276, 277, 278, 279, 280, 0, 0, 281, 282, 283, 0, 284, 285, 286, 287, 
288, 289, 290, 291, 292, 0, 293, 294, 295, 296, 297, 0, 298, 299, 300, 301, 302, 0, 303, 304, 305, 306, 307, 
308, 309, 310, 311, 0, 312, 313, 314, 315, 316, 0, 0, 0, 317, 318, 319, 0, 320, 321, 322, 323, 324, 325, 
0, 0, 0, 326, 327, 328, 329, 0, 330, 331, 332, 0, 333, 334, 335, 0, 336, 337, 338, 0, 0, 0, 0, 
339, 340, 341, 342, 343, 344, 0, 0, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 0, 356, 357, 358, 
359, 360, 361, 362, 363, 364, 365, 366, 0, 367, 368, 369, 370, 0, 0, 371, 372, 373, 0, 374, 375, 376, 377, 
378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 
401, 402, 403, 404, 0, 405, 406, 407, 408, 0, 409, 410, 411, 412, 413, 414, 0, 415, 416, 417, 418, 419, 420, 
421, 422, 423, 424, 0, 425, 426, 427, 428, 0, 429, 430, 431, 432, 433, 434, 0, 435, 436, 437, 438, 439, 440, 

]);


