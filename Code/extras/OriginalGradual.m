function move = OriginalGradual(history)
    % A player that punishes defections with a growing number of defections 
    % but after punishing for punishment_limit number of times enters a calming state 
    % and cooperates no matter what the opponent does for two rounds.
    % The punishment_limit is incremented whenever the opponent defects 
    % and the strategy is not in either calming or punishing state.

    if isempty(history)
        clear OriginalGradual
        move = 'C';
        return;
    end

    persistent self_state;
    persistent punishment_count;
    persistent punishment_limit;

    if isempty(self_state)
         self_state = "Neutral";
    end

    if isempty(punishment_count)
         punishment_count = 0;
    end

    if isempty(punishment_limit)
         punishment_limit = 3;
    end

    if self_state == "Calming"
        self_state = "Neutral";
        move = 'C';
    elseif self_state == "Punishing"
        if punishment_count == punishment_limit
            punishment_count = punishment_count + 1;
            move = 'D';
        else
            self_state = "Calming";
            punishment_count = 0;
            move = 'C';
        end
    elseif history(end, 2) == 'D'
        self_state = "Punishing";
        punishment_count = punishment_count + 1;
        punishment_limit = punishment_limit + 1;
        move = 'D';
    else
        move = 'C';
    end
end