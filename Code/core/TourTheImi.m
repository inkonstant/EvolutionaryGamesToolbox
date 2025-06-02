function P = TourTheImi(B, Strategies, POP0, K, T, J)
    N  = sum(POP0);
    M = length(Strategies);

    states = generateStates(N);
    S = size(states, 1);
    P = zeros(S, S);

    for i = 1:S
        s = states(i, :);
        payoffs = computePayoffs(B, s, Strategies, T);
        best_strats = findBestStrategies(payoffs);

        for from = 1:M
            if s(from) == 0
                continue;
            end

            for b = 1:length(best_strats)
                to = best_strats(b);

                s_new = s;
                s_new(from) = s_new(from) - 1;
                s_new(to) = s_new(to) + 1;

                idx_new = find(ismember(states, s_new, 'rows'));

                p = (s(from)/N) * (1/length(best_strats));
                P(i, idx_new) = P(i, idx_new) + p;
            end
        end
    end
end
