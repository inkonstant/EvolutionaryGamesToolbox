function move = TrickyCooperator(history)
    % After 3 rounds, if opponent has not defected to a max history depth of 10, defect.

    if length(history(:,2)) < 3
        move = 'C';
        return;
    end

    if length(history(:,2)) < 10 
        if any(history(:, 2) == 'D')
            move = 'D';
        else
            move = 'C';
        end
    elseif any(history(end-9 : end, 2) == 'D')
        move = 'D';
    else
        move = 'C';
    end
end