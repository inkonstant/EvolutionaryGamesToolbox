function move = TrickyDefector(history)
    % Defect if opponent has cooperated at least once in the past and
    % has defected for the last 3 turns in a row.
    
    if length(history(:,2)) < 3
        move = 'D';
        return;
    end

    if any(history(:,2) == 'C') && all(history(end-2:end, 2) == 'D')
        move = 'D';
    else
        move = 'C';
    end
end