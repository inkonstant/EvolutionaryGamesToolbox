function total_payoff = computePayoffs(B, Pop, Strategies, T)
    S = length(Pop);
    total_payoff = zeros(1, S);

    for i = 1:S
        if Pop(i) > 0
            for j = 1:S
                score = Axel(B, {Strategies{i}, Strategies{j}}, [1 1], T);
                total_payoff(i) = total_payoff(i) + score(1) * Pop(j);
                if i == j
                    total_payoff(i) = total_payoff(i) - score(1);
                end
            end
        end
    end
end