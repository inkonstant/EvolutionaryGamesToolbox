function move = UsuallyDefects(history)
    % This strategy defects except after a D following a C.

    if length(history(:,2)) < 2
        move = 'D';
        return;
    end

    if history(end, 2) == 'D' && history(end-1, 2) == 'C'
        move = 'C';
    else
        move = 'D';
    end
end