clc; clear; close all;

Strategies = {'PerCCCCD', 'HardProber', 'SoftMajo'};
POP0 = [500, 800, 100];
J = 300;
T = 100;
B = [3, 0; 5, 1];

[POP, BST, FIT] = TourSimFit(B, Strategies, POP0, T, J);

fig = figure(Units='normalized', OuterPosition=[0 0 1 1]);
plot(0:J, POP(:,1), 'LineWidth', 1.5, 'Color', [0.1, 0.4, 0.7]);
hold on;
plot(0:J, POP(:,2), 'LineWidth', 1.5, 'Color', [1.0, 0.5, 0.1]);
plot(0:J, POP(:,3), 'LineWidth', 1.5, 'Color', [0.0, 0.6, 0.4]);
legend(Strategies, 'Location', 'best', Interpreter='latex', FontSize=12);
xlabel('Generation', Interpreter='latex', FontSize=15);
ylabel('Number of individuals', Interpreter='latex', FontSize=15);
grid on;
grid minor;

print('fig_sim_the_6', '-dpng', '-r300')