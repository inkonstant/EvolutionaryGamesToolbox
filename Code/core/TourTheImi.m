function P = TourTheImi(B, Strategies, POP0, K, T, J)
    N  = sum(POP0);
    M = length(Strategies);

    states = generateStates_alt(N);
    S = size(states, 1);
    P = zeros(S, S);

    for i = 1:S
        s = states(i, :);
        payoffs = computePayoffs(B, s, Strategies, T);
        best_strats = findBestStrategies(payoffs);

        fprintf('Κατάσταση %d: %s --> Βέλτιστες στρατηγικές: %s\n', ...
        i, mat2str(s), mat2str(best_strats));

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

function avg_payoffs = computePayoffs(B, Pop, Strategies, T)
    M = length(Pop);
    avg_payoffs = zeros(1, M);
    total_players = sum(Pop);

    for i = 1:M
        if Pop(i) == 0
            avg_payoffs(i) = -inf;
            continue;
        end

        total_payoff = 0;
        for j = 1:M
            if Pop(j) == 0
                continue;
            end
            score = Axel(B, {Strategies{i}, Strategies{j}}, [1 1], T);
            total_payoff = total_payoff + score(1) * Pop(j);
        end
        avg_payoffs(i) = total_payoff / total_players;
    end
end

function best = findBestStrategies(payoffs)
    max_pay = max(payoffs);
    best = find(abs(payoffs - max_pay) < 1e-6);
end

function states = generateStates_alt(N)
    states = [];

    for i = 0:N
        for j = 0:(N - i)
            k = N - i - j;
            states(end+1, :) = [i, j, k];
        end
    end
end