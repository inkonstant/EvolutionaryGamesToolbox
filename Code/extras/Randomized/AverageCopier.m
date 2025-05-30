function move = AverageCopier(history)
    % The player will cooperate with probability p if the opponent’s cooperation ratio is p.
    % Starts with random decision.

    if isempty(history)
        if rand < 0.5
            move = 'C';
            return;
        else
            move = 'D';
            return;
        end
    end

    p = 0.5;

    coop_num = sum(history(:, 2) == 'C');
    coop_rate = coop_num / length(history(:,2));

    if coop_rate == p
        if rand < p
            move = 'C';
        else
            move = 'D';
        end
    else
        move = 'D';
    end
end