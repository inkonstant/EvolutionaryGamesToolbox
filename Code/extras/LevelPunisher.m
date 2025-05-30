function move = LevelPunisher(history)
    % A player starts by cooperating however, after 10 rounds will defect if 
    % at any point the number of defections by an opponent is greater than 20%.

    if length(history(:,2)) < 10
        move = 'C';
        return;
    end

    def_num = sum(history(:,2) == 'D');
    def_rate = def_num / length(history(:,2));

    if def_rate > 0.2
        move = 'D';
    else
        move = 'C';
    end
end