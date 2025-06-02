clc; clear; close all;

Strategies = {'AllC', 'AllD', 'Grim'};

POP0 = [2, 2, 1];

B = [4.9, 0; 5, 1];
K = 1;
T = 100;
J = 10;

P = TourTheImi(B, Strategies, POP0, K, T, J);

mc = dtmc(P);

S = generateStates(sum(POP0));

L = size(S, 1);
PP = P;

N = 5;

save("mydata.mat", "mc", "P", "S", "PP", "L", "N");

GrPlot("mydata.mat")