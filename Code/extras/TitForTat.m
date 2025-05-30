function move = TitForTat(history)
    if isempty(history)
        move = 'C';
    else
        move = history(end, 2);
    end
end