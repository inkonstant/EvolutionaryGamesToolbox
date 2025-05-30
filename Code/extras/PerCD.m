function move = PerCD(history)
    sequence = ['C', 'D'];

    rounds = length(history(:,2));

    move = sequence(mod(rounds, length(sequence)) + 1);
end