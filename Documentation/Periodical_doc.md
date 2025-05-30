# Cycler Function

### Description:

Cycler repeats a fixed sequence of moves indefinitely; by default, the sequence is ['C', 'C', 'D']. At each round, it selects the next element in the cycle based on the number of previous rounds played.

### Syntax:

```matlab
move = Cycler(history)
```

### Inputs:

- history (T×2 char array): Previous moves, where each row is [own_move, opponent_move].

### Output:

- move (char): Next move in the repeating sequence.

### Example:

```matlab
% Simulate first five moves of Cycler
history = [];
moves = [];
for t = 1:5
    m = Cycler(history);
    moves = [moves, m];
    % append dummy opponent move
    history = [history; m, 'C'];
end
% moves = ['C','C','D','C','C']
```

<br>

# AntiCycler Function

### Description:

AntiCycler repeats a fixed sequence of moves indefinitely; by default, the sequence is ['D', 'D', 'C']. At each round, it selects the next element in the cycle based on the number of previous rounds played.

### Syntax:

```matlab
move = Cycler(history)
```

### Inputs:

- history (T×2 char array): Previous moves, where each row is [own_move, opponent_move].

### Output:

- move (char): Next move in the repeating sequence.

### Example:

```matlab
% Simulate first five moves of Cycler
history = [];
moves = [];
for t = 1:5
    m = AntiCycler(history);
    moves = [moves, m];
    % append dummy opponent move
    history = [history; m, 'C'];
end
% moves = ['D','D','C','D','D']
```

<br>

# PerCD Function

### Description:

PerCD repeats a fixed sequence of moves indefinitely; by default, the sequence is ['C', 'D']. At each round, it selects the next element in the cycle based on the number of previous rounds played.

### Syntax:

```matlab
move = PerCD(history)
```

### Inputs:

- history (T×2 char array): Previous moves, where each row is [own_move, opponent_move].

### Output:

- move (char): Next move in the repeating sequence.

### Example:

```matlab
% Simulate first five moves of Cycler
history = [];
moves = [];
for t = 1:5
    m = PerCD(history);
    moves = [moves, m];
    % append dummy opponent move
    history = [history; m, 'C'];
end
% moves = ['C','D','C','D','C']
```

<br>

# PerCCCCD Function

### Description:

PerCCCCD repeats a fixed sequence of moves indefinitely; by default, the sequence is ['C', 'C', 'C', 'C', 'D']. At each round, it selects the next element in the cycle based on the number of previous rounds played.

### Syntax:

```matlab
move = PerCCCCD(history)
```

### Inputs:

- history (T×2 char array): Previous moves, where each row is [own_move, opponent_move].

### Output:

- move (char): Next move in the repeating sequence.

### Example:

```matlab
% Simulate first five moves of Cycler
history = [];
moves = [];
for t = 1:5
    m = PerCCCCD(history);
    moves = [moves, m];
    % append dummy opponent move
    history = [history; m, 'C'];
end
% moves = ['C','C','C','C','D']
```
