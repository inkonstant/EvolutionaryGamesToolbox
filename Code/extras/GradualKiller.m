function move = GradualKiller(history)
    % It begins by defecting in the first five moves, then cooperates two times.
    % It then defects all the time if the opponent has defected in move 6 and 7,
    % else cooperates all the time.

    if length(history(:,2)) < 7
        sequence = ['D', 'D', 'D', 'D', 'D', 'C', 'C'];
        move = sequence(length(history(:,2)) + 1);
        return;
    end

    if any(history(6:7, 2) == 'D')
        move = 'D';
    else
        move = 'C';
    end
end