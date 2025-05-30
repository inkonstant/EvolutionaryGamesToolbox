function move = WmAdams(history)
    % Count the number of opponent defections after their first move, call c_defect.
    % Defect if c_defect equals 4, 7, or 9.
    % If c_defect > 9, then defect immediately after opponent defects with probability = (0.5)^(c_defect-1).
    % Otherwise cooperate.

    if isempty(history)
        move = 'C';
        return;
    end
    
    def_num = sum(history(2:end, 2) == 'D');

    if def_num == 4 || def_num == 7 || def_num == 9
        move = 'D';
    elseif def_num > 9 && history(end, 2) == 'D'
        if rand <= (0.5)^(def_num-1)
            move = 'D';
        else
            move = 'C';
        end
    else
        move = 'C';
    end
end