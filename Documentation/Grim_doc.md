# Grim Function

### Description:

Grim implements the grim trigger strategy in the iterated Prisoner’s Dilemma. It cooperates initially and continues cooperating until the opponent defects once; thereafter, Grim defects for all remaining rounds, permanently punishing the opponent for defection.

### Syntax:

```matlab
move = Grim(history)
```

### Inputs:

- history (T×2 char array): Previous moves, where each row is [own_move, opponent_move].

### Output:

- move (char): Returns 'C' if the opponent has never defected; otherwise, returns 'D' for all subsequent rounds.

### Example:

```matlab
history = [];
% Round 1: cooperates
move1 = Grim(history);
% Suppose opponent defects
history = [history; move1, 'D'];

% Round 2: oponenet defected so defects ('D')
move2 = Grim(history);
% Suppose opponent cooperates
history = [history; move2, 'C'];

% Round 3: once defection seen, always defects ('D')
move3 = Grim(history);
```
