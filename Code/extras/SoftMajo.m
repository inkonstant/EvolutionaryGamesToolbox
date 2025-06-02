function move = SoftMajo(history)
    % Begins by cooperating and cooperates as long as 
    % the number of times the opponent has cooperated is greaten that or equal to 
    % the number of times it has defected. Otherwise defects

    if isempty(history)
        move = 'C';
        return;
    end

    coop_num = sum(history(:, 2) == 'C');
    def_num = sum(history(:, 2) == 'D');

    if coop_num >= def_num
        move = 'C';
    else
        move = 'D';
    end
end