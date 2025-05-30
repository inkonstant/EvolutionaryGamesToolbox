# TitForTat Function

### Description:

TitForTat is a reciprocity-based strategy for the iterated Prisoner’s Dilemma: it begins by cooperating on the first round, then on subsequent rounds it mimics the opponent’s previous move (cooperates if the opponent cooperated, defects if the opponent defected).

### Syntax:

```matlab
move = TitForTat(history)
```

### Inputs:

- history (T×2 char array): Previous moves, where each row is [own_move, opponent_move].

### Output:

- move (char): Returns 'C' on the first round or replicates the opponent’s last move on later rounds.

### Example:

```matlab
history = [];
% Round 1: cooperates
move1 = TitForTat(history);
% Suppose opponent defects
history = [history; move1, 'D'];

% Round 2: mimics opponent's last move ('D')
move2 = TitForTat(history);
% Suppose opponent cooperates
history = [history; move2, 'C'];

% Round 3: mimics opponent's last move ('C')
move3 = TitForTat(history);
```
