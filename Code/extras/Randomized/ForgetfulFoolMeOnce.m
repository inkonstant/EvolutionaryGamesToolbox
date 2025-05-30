function move = ForgetfulFoolMeOnce(history)
    % Forgives one D then retaliates forever on a second D.
    % Sometimes randomly forgets the defection count.

    forget_probability = 0.2;

    num_defect = sum(history(:,2) == 'D');

    if rand < forget_probability
        num_defect = 0;
    end

    if num_defect > 1
        move = 'D';
    else
        move = 'C';
    end
end