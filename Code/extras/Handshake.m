function move = Handshake(history)
    % Starts with C, D. If the opponent plays the same way, cooperate forever, else defect forever.

    if isempty(history)
        move = 'C';
        return;
    end

    if isscalar(history(:,2))
        move = 'D';
        return;
    end

    if history(1,2) == 'C' && history(2,2) == 'D'
        move = 'C';
    else
        move = 'D';
    end
end