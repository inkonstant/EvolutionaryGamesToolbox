function move = BackStabber(history)
    % Forgives the first 3 defections but on the fourth will defect forever.
    % Defects on the last 2 rounds unconditionally.

    if length(history(:,2)) > 97
        move = 'D';
        return;
    end

    def_num = sum(history(:, 2) == 'D');

    if def_num >= 4
        move = 'D';
    else
        move = 'C';
    end
end