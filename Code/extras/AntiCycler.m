function move = AntiCycler(history)
    % 

    sequence = ['D', 'D', 'C'];

    move = sequence(mod(length(history(:,2)), length(sequence)) + 1);
end