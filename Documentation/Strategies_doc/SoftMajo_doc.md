# SoftMajo Function

### Description:

SoftMajo implements a forgiving majority strategy for the iterated Prisoner’s Dilemma: it starts by cooperating, then continues to cooperate as long as the opponent’s total cooperations are at least as many as their defections. If the opponent has defected more often than cooperated, SoftMajo defects to punish.

### Syntax:

```matlab
move = SoftMajo(history)
```

### Inputs:

- history (T×2 char array): Previous moves, where each row is [own_move, opponent_move].

### Output:

- move (char): Returns 'C' for cooperate or 'D' for defect, based on the opponent’s cooperation-to-defection count.

### Example:

```matlab
history = [];
% Round 1: cooperates
move1 = SoftMajo(history);
% Suppose opponent defects
history = [history; move1, 'D'];

% Round 2: coop_num = 0, def_num = 1 => defects
move2 = SoftMajo(history);
% Suppose opponent cooperates
history = [history; move2, 'C'];

% Round 3: coop_num = 1, def_num = 1 => cooperates
move3 = SoftMajo(history);
```
