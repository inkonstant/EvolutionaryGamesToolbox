function move = Champion(history)
    % This player cooperates on the first 10 moves and plays Tit for Tat for the next 15 more moves.
    % After 25 moves, the program cooperates unless all the following are true:
    % the other player defected on the previous move,
    % the other player cooperated less than 60% and 
    % the random number between 0 and 1 is greater that the other player’s cooperation rate.

    rounds = length(history(:,2));

    if rounds < 10
        move = 'C';
    elseif rounds < 25
        move = history(end, 2);
    else 
        coop_num = sum(history(:, 2) == 'C');
        coop_rate = coop_num / rounds;

        if history(end, 2) == 'D' && coop_rate < 0.6 && rand > coop_rate
            move = 'D';
        else
            move = 'C';
        end
    end
end