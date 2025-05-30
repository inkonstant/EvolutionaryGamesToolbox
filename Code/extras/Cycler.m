function move = Cycler(history)
    % A player that repeats a given sequence indefinitely.

    sequence = ['C', 'C', 'D'];

    rounds = length(history(:,2));

    move = sequence(mod(rounds, length(sequence)) + 1);
end