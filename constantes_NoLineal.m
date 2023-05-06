close all
clc
clear all
%Initial population for each troop
pob_g = 30000;
pob_n = 30000;
pob_a = 50000;
pob_p = 50000;
%used scale

scale = 1; 

%Terrain effectiveness, it has certain influence but it's not that much
T_g = 0.7;
T_n = 0.7;
T_a = 0.2;
T_p = 0.2;

%Combat effectiveness, it has to be a decisive value
%Rights attacks left
e_AG = 0.2;%Effectiveness of G fighting A
e_AN = 0.2;
e_NP = 0.7;
e_GP = 0.7;

% A against G y N complement
e_NA = 1-e_AN;
e_GA = 1-e_AG;
e_PN = 1-e_NP;
e_PG = 1-e_GP;

%Recruitment constants gotta be small since there is not many people to recruit 
rc_a = 0.003;
rc_p = 0.003;
rc_g = 0.8;
rc_n = 0.8;