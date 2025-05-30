# AllC Function

### Description:

AllC is a simple strategy function for the iterated Prisoner’s Dilemma that always cooperates ('C'), regardless of history. It ignores its input history and returns 'C' on every call.

### Syntax:

```matlab
move = AllC(history)
```

### Inputs:

- history (T×2 char array): Previous moves, where each row is [own_move, opponent_move].

### Output:

- move (char): Always returns 'C'.

### Example:

```matlab
history = [];
move = AllC(history);
```
