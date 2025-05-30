function move = Grim(history)
    if any(history(:,2) == 'D')
        move = 'D';
    else
        move = 'C';
    end
end