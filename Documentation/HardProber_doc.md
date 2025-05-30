# HardProber Function

### Description:

HardProber is a probing strategy for the iterated Prisoner’s Dilemma. It begins with a fixed four-move sequence (D, D, C, C). If the opponent cooperated in both moves 2 and 3, HardProber interprets them as "nice" and defects forever as exploitation. Otherwise, it switches to a Tit‑for‑Tat pattern, mirroring the opponent’s last move thereafter.

### Syntax:

```matlab
move = HardProber(history)
```

### Inputs:

- history (T×2 char array): Previous moves, where each row is [own_move, opponent_move].

### Output:

- move (char): Returns one of 'C' (cooperate) or 'D' (defect) based on the probing logic.

### Example:

```matlab
% Simulate first six moves:
history = [];
moves = [];
for t = 1:6
    m = HardProber(history);
    moves(end+1) = m;
    % Assume opponent cooperates each time for this example
    history = [history; m, 'C'];
end
% moves = ['D','D','C','C','D','D']
% (Defection forever after seeing cooperation in moves 2 and 3)
```
