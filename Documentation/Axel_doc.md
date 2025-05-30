# Axel Function

### Description:

Simulates an evolutionary Axelrod tournament among a population of strategies. Given a 2×2 payoff matrix, a set of strategy functions, and their counts, it pits every pair of players against each other for a specified number of rounds, accumulating payoffs to produce a score for each individual.

### Syntax:

```matlab
Scores = Axel(B, Strategies, Pop, T)
```

### Inputs:

- B (2×2 numeric matrix): Payoff matrix where rows/columns correspond to cooperation ('C') or defection ('D') moves.

  - B(1,1): Reward for mutual cooperation.

  - B(1,2): Sucker’s payoff (cooperate vs. defect).

  - B(2,1): Temptation payoff (defect vs. cooperate).

  - B(2,2): Punishment for mutual defection.

- Strategies (1×S cell array): Function handles or names of S strategy functions, each accepting a 2-column history matrix and returning a move ('C' or 'D').

- Pop (1×S numeric vector): Population counts for each of the S strategies.

- T (scalar integer): Number of repeated rounds per pairwise match.

### Output:

- Scores (1×N numeric vector): Total accumulated payoff for each of the N = sum(Pop) players.

### Example:

```matlab
B = [3, 0; 5, 1];
Strategies = {@AllC, @AllD};
Pop = [5, 5];
T = 100;

scores = Axel(B, Strategies, Pop, t);

disp(scores)
```
