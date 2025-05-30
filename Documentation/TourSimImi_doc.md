# TourSimImi Function

### Description:

TourSimImi executes an imitation-based evolutionary tournament over multiple generations in the iterated Prisoner’s Dilemma. Each generation computes expected payoffs via calcV, identifies the best-performing strategy by payoff, then imitates up to K individuals by converting them to the best strategy, simulating targeted imitation dynamics.

### Syntax:

```matlab
[POP, BST, FIT] = TourSimImi(B, Strategies, POP0, T, J)
```

### Inputs:

- B (2×2 numeric matrix): Payoff matrix where rows/columns correspond to cooperation ('C') or defection ('D') moves.

  - B(1,1): Reward for mutual cooperation.

  - B(1,2): Sucker’s payoff (cooperate vs. defect).

  - B(2,1): Temptation payoff (defect vs. cooperate).

  - B(2,2): Punishment for mutual defection.

- Strategies (1×S cell array): Function handles or names of S strategy functions, each accepting a 2-column history matrix and returning a move ('C' or 'D').

- POP0 (1×S numeric vector): Initial counts of each strategy in the population.

- K (scalar integer): Number of individuals converted to the best strategy each generation.

- T (scalar integer): Number of repeated rounds per pairwise match.

- J (scalar integer): Number of generations (iterations) to simulate.

### Output:

- POP ((J+1)×S numeric matrix): Population counts over generations.

  - Row 1 is the initial POP0; row j+1 is generation j.

- BST (J×1 integer vector): Index of the best-performing strategy for each generation, determined by the highest proportion in POP(j+1,:).

### Example:

```matlab
Strategies = {'AllC', 'AllD', 'TitForTat'};
POP0 = [20, 30, 10];
J = 50;
K = 5;
T = 100;
B = [3, 0; 5, 1];


[POP, BST] = TourSimImi(B, Strategies, POP0, K, T, J);

figure;
plot(0:J, POP);
legend(Strategies);
xlabel('Generation');
ylabel('Number of individuals');
```
