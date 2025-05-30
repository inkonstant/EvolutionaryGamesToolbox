function move = Grofman(history)
    % If the players did different things on the previous move, this rule cooperates with probability 2/7.
    % Otherwise this rule always cooperates.

    if isempty(history) || isscalar(history(:,2))
        move = 'C';
        return;
    end

    if history(end, 2) ~= history(end-1, 2)
        if rand <= 2/7
            move = 'C';
        else
            move = 'D';
        end
    else
        move = 'C';
    end
end