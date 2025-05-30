function move = Grumpy(history)
    % A player that defects after a certain level of grumpiness.
    % Grumpiness increases when the opponent defects and decreases when the opponent co-operates.

    persistent self_state;

    if isempty(self_state)
        self_state = "Nice";
    end

    grumpy_threshold = 5;
    nice_threshold = -5;

    def_num = sum(history(:,2) == 'D');
    coop_num = sum(history(:,2) == 'C');

    grumpiness = def_num - coop_num;

    if self_state == "Nice"
        if grumpiness > grumpy_threshold
            self_state = "Grumpy";
            move = 'D';
        else
            move = 'C';
        end
    elseif self_state == "Grumpy"
        if grumpiness < nice_threshold
            self_state = "Nice";
            move = 'C';
        else
            move = 'D';
        end
    else
        error('Invalid state');
    end
end