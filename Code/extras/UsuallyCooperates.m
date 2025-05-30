function move = UsuallyCooperates(history)
    % This strategy cooperates except after a C following a D.

    if length(history(:,2)) < 2
        move = 'C';
        return;
    end

    if history(end, 2) == 'C' && history(end-1, 2) == 'D'
        move = 'D';
    else
        move = 'C';
    end
end