function move = DoubleCrosser(history)
    % Forgives the first 3 defections but on the fourth will defect forever.
    % Defects on the last 2 rounds unconditionally.
    % If 8 <= current round <= 180, if the opponent did not defect in the first 7 rounds,
    % the player will only defect after the opponent has defected twice in-a-row.

    if length(history(:,2)) > 97
        move = 'D';
        return;
    end

    def_num = sum(history(:, 2) == 'D');

    if def_num > 3
        move = 'D';
    elseif length(history(:,2)) >= 7 && length(history(:,2)) < 180 && sum(history(1:7, 2) == 'D') == 0
        if history(end, 2) == 'D' && history(end-1, 2) == 'D'
            move = 'D';
        else
            move = 'C';
        end
    else
        move = 'C';
    end
end