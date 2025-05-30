function V = calcV(B, Strategies, T)
    S = length(Strategies);
    V = zeros(S, S);

    for i = 1:S
        for j = 1:S
            scores = Axel(B, {Strategies{i}, Strategies{j}}, [1 1], T);
            V(i, j) = scores(1);
        end
    end
end