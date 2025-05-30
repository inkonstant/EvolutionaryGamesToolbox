function move = Detective(history)
    % Starts with C, D, C, C, or with the given sequence of actions.
    % If the opponent defects at least once in the first fixed rounds,
    % play as TFT forever, else defect forever.
    
    if length(history(:,2)) < 4
        sequence = ['C', 'D', 'C', 'C'];
        move = sequence(length(history(:,2)) + 1);
        return;
    end

    if any(history(1:4, 2) == 'D')
        move = history(end, 2);
    else
        move = 'D';
    end
end