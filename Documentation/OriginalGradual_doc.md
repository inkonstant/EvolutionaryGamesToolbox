# OriginalGradual Function

### Description:

OriginalGradual implements a gradual punishment strategy in the iterated Prisoner’s Dilemma. It starts by cooperating, and upon an opponent’s defection enters a Punishing state: it defects a growing number of times (based on a punishment_limit that increments with each new defection). After reaching the limit, it transitions to a Calming state for two rounds of unconditional cooperation before returning to a Neutral state, ready to punish again if needed.

### Syntax:

```matlab
move = OriginalGradual(history)
```

### Inputs:

- history (T×2 char array): Previous moves, where each row is [own_move, opponent_move].

### Output:

- move (char): Returns 'C' for cooperate or 'D' for defect, based on the current state and punishment logic.

### Internal States & Variables (persistent):

self_state: Tracks current state ("Neutral", "Punishing", "Calming").

punishment_count: Number of defections executed in the current punishing phase.

punishment_limit: Current threshold for punishment length, increased each time the opponent defects while neutral.

### Behavior Flow:

1. Initialization: On first call (history empty), clear any previous persistent variables and cooperate.

2. Calming State: If in Calming, return to Neutral after one cooperative move.

3. Punishing State: Defect until punishment_count reaches punishment_limit; then enter Calming, reset punishment_count.

4. Defection Trigger: If the last opponent move was 'D' and in Neutral, enter Punishing, increment both punishment_count and punishment_limit, then defect.

5. Neutral State: If no triggering defection, cooperate.

### Example:

```matlab
% Simulate an interaction where opponent defects at round 2 and 5
history = [];
moves = [];
opponent = ['C','D','C','C','D','C'];
for t = 1:length(opponent)
    m = OriginalGradual(history);
    moves(end+1) = m;
    history = [history; m, opponent(t)];
end
% moves might be: ['C','D','D','C','D','D']
% Showing increasing punishments and calming phases
```
