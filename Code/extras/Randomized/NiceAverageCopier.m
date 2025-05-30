function move = NiceAverageCopier(history)
    % Same as Average Copier, but always starts by cooperating.

    if isempty(history)
        move = 'C';
        return;
    end

    p = 0.5;

    coop_num = sum(history(:, 2) == 'C');
    coop_rate = coop_num / size(history, 1);

    if coop_rate == p
        if rand < p
            move = 'C';
        else
            move = 'D';
        end
    else
        move = 'C';
    end
end