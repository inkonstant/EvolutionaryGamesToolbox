function move = SoftJoss(history)
    % Defects with probability 0.9 when the opponent defects,
    % otherwise emulates Tit-For-Tat.

    if isempty(history)
        move = 'C';
        return;
    end

    if history(end, 2) == 'D'
        if rand <= 0.9
            move = 'D';
        else
            move = 'C';
        end
    else
        move = history(end);
    end
end