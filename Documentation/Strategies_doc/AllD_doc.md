# AllD Function

### Description:

AllD is a simple strategy function for the iterated Prisoner’s Dilemma that always defects ('D'), regardless of history. It ignores its input history and returns 'D' on every call.

### Syntax:

```matlab
move = AllD(history)
```

### Inputs:

- history (T×2 char array): Previous moves, where each row is [own_move, opponent_move].

### Output:

- move (char): Always returns 'D'.

### Example:

```matlab
history = [];
move = AllD(history);
```
