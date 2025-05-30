function move = Joss(history)
    % This rule cooperates 90% of the time after a cooperation by the other.
    % It always defects after a defection by the other.

    if isempty(history)
        move = 'C';
        return;
    end

    if history(end, 2) == 'C'
        if rand <= 0.9
            move = 'C';
        else
            move = 'D';
        end
    else
        move = 'D';
    end
end