function move = FoolMeOnce(history)
    % Forgives one D then retaliates forever on a second D.

    def_num = sum(history(:,2) == 'D');

    if def_num > 1
        move = 'D';
    else
        move = 'C';
    end
end