function move = Doubler(history)
    % Cooperates except when the opponent has defected and the opponent’s
    % cooperation count is less than twice their defection count
    % First move plays is cooperation

    if isempty(history)
        move = 'C';
        return;
    end
    
    coop_num = sum(history(:, 2) == 'C');
    def_num = sum(history(:, 2) == 'D');

    if history(end, 2) == 'D' && coop_num < 2 * def_num
        move = 'D';
    else
        move = 'C';
    end
end