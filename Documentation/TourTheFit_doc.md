# TourTheFit Function

### Description:

TourTheFit performs an evolutionary tournament over multiple generations using fitness-proportionate selection, following the methodology described in the 1999 paper Studies on Dynamics in the Classical Iterated Prisoner’s Dilemma with Few Strategies Is There Any Chaos in the Pure Dilemma? by Mathieu, Beaufils and Delahaye. For each generation, it calculates fitness scores based on pairwise interactions (via calcV), updates the population distribution, and records the best-performing strategy at each generation.

### Syntax:

```matlab
[POP, BST, FIT] = TourTheFit(B, Strategies, POP0, T, J)
```

### Inputs:

- B (2×2 numeric matrix): Payoff matrix where rows/columns correspond to cooperation ('C') or defection ('D') moves.

  - B(1,1): Reward for mutual cooperation.

  - B(1,2): Sucker’s payoff (cooperate vs. defect).

  - B(2,1): Temptation payoff (defect vs. cooperate).

  - B(2,2): Punishment for mutual defection.

- Strategies (1×S cell array): Function handles or names of S strategy functions, each accepting a 2-column history matrix and returning a move ('C' or 'D').

- POP0 (1×S numeric vector): Initial counts of each strategy in the population.

- T (scalar integer): Number of repeated rounds per pairwise match.

- J (scalar integer): Number of generations (iterations) to simulate.

### Output:

- POP ((J+1)×S numeric matrix): Population counts over generations.

  - Row 1 is the initial POP0; row j+1 is generation j.

- BST (J×1 integer vector): Index of the best-performing strategy for each generation, determined by the highest proportion in POP(j+1,:).

- FIT (J×S numeric matrix): Fitness values for each strategy at each generation, computed as:

  gn(A) = Wn(A) \* V(A|A) + Wn(B) \* V(A|B) + Wn(C) \* V(A|C) − V(A|A), where Wn(i) = POP(j,:).

### Example:

```matlab
Strategies = {'PerCD', 'AntiCycler', 'SoftMajo'};
POP0 = [100, 100, 100];
J = 90;
T = 100;
B = [3, 0; 5, 1];

[POP, BST, FIT] = TourTheFit(B, Strategies, POP0, T, J);

figure;
plot(0:J, POP);
legend(Strategies);
xlabel('Generation');
ylabel('Number of individuals');
```
