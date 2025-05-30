clc; clear; close all;

B = [3, 1; 4, 2];
Strategies = {@AllD, @AllC, @Grim, @TitForTat};
Pop = [10, 10, 10, 10];
T = 100;

scores = Axel(B, Strategies, Pop, T);

% disp(scores);

figure;
bar(scores, 'BarWidth', 0.5);
% scatter(1:sum(Pop), scores, 'filled')
title('Axelrod tournament results');
xlabel('Player');
ylabel('Score');
