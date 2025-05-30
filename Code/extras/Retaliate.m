function move = Retaliate(history)
    % If the opponent has played D to my C more often than x% of the time 
    % that I’ve done the same to him, play D. Otherwise, play C.

    if isempty(history)
        move = 'C';
        return;
    end

    opp_D_after_C = 0;
    my_D_after_C = 0;

    for i = 1:length(history(:,2))
        if history(i,1) == 'C' && history(i,2) == 'D'
            opp_D_after_C = opp_D_after_C + 1;
        elseif history(i,1) == 'D' && history(i,2) == 'C'
            my_D_after_C = my_D_after_C + 1;
        end
    end

    if my_D_after_C == 0 && opp_D_after_C ~= 0
        move = 'D';
        return;
    end

    x = 0.5;

    ratio = oop_D_after_C / my_D_after_C;

    if ratio > x
        move = 'D';
    else
        move = 'C';
    end
end