function move = Cave(history)
    % First look for overly-defective or apparently random opponents, and defect if found. That is any opponent meeting one of:
    % turn > 39 and percent defects > 0.39
    % turn > 29 and percent defects > 0.65
    % turn > 19 and percent defects > 0.79
    % Otherwise, respond to cooperation with cooperation and respond to defections with a defection

    if isempty(history)
        move = 'C';
        return;
    end

    def_num = sum(history(:,2) == 'D');
    def_rate = def_num / length(history(:,2));

    turn = length(history(:,2)) + 1;

    if turn > 39 && def_rate > 0.39
        move = 'D';
    elseif turn > 29 && def_rate > 0.65
        move = 'D';
    elseif turn > 19 && def_rate> 0.79
        move = 'D';
    else
        if history(end,2) == 'C'
            move = 'C';
        else
            move = 'D';
        end
    end
end