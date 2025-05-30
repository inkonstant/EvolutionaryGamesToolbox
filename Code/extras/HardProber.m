function move = HardProber(history)
    % Plays D, D, C, C initially. Defects forever if opponent cooperated in moves 2 and 3.
    % Otherwise plays TFT.

    if length(history(:,2)) < 4
        sequence = ['D', 'D', 'C', 'C'];
        move = sequence(length(history(:,2)) + 1);
        return;
    end

    if history(2,2) == 'C' && history(3,2) == 'C'
        move = 'D';
    else
        move = history(end,2);
    end
end