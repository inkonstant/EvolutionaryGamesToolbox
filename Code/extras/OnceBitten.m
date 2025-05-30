function move = OnceBitten(history)
    % Cooperates once when the opponent defects, 
    % but if they defect twice in a row defaults to grim for 10 turns defecting.

    if isempty(history)
        move = 'C';
        return;
    end

    if history(end,2) == 'D' && history(end-1, 2) == 'D'
        rounds_since_cooperation = length(history(:,2)) - find(history(:,2) == 'C' ,1, "last");
        if rounds_since_cooperation < 10
            move = 'D';
        else
            move = 'C';
        end
    else
        move = 'C';
    end
end