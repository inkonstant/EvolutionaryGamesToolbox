function move = PerCCCCD(history)
    sequence = ['C', 'C', 'C', 'C', 'D'];

    rounds = length(history(:,2));

    move = sequence(mod(rounds, length(sequence)) + 1);
end