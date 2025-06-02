function move = Pavlov(history)
    % First move: Cooperate.
    % On each subsequent move: If your payoff last round was either R or T (a “win”), repeat your previous move; 
    % if it was P or S (a “loss”), switch moves.

    if isempty(history)
        move = 'C';
        return;
    end

    my_last  = history(end,1);
    opp_last = history(end,2);

    if (my_last == 'D' && opp_last == 'C') || (my_last == 'C' && opp_last == 'C')
        move = my_last;
    else
        if my_last == 'C'
            move = 'D';
        else
            move = 'C';
        end
    end
end