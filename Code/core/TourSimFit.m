function [POP, BST, FIT] = TourSimFit(B, Strategies, POP0, T, J)
    S = length(Strategies);
    
    POP = zeros(J+1, S);
    POP(1, :) = POP0(:)';
    BST = zeros(J, 1);
    FIT = zeros(J, S);

    Pi = sum(POP0);

    V = calcV(B, Strategies, T);

    for j = 1:J
        W = POP(j,:);
        
        strat_idx = zeros(1, Pi);
        idx = 1;
        for s = 1:S
            strat_idx(idx:idx+W(s)-1) = s;
            idx = idx + W(s);
        end

        perTypeScore = W * V.' - diag(V).';

        scores = perTypeScore(strat_idx);

        totByType = accumarray(strat_idx.', scores.', [S,1]).';  % 1×S
        sumScores = sum(scores);

        g = totByType / sumScores;  
        FIT(j, :) = g;

        W_next = floor(Pi * g);
        rem = Pi - sum(W_next);
        if rem > 0
            [~, order] = sort(g, 'descend');
            W_next(order(1:rem)) = W_next(order(1:rem)) + 1;
        end

        POP(j+1,:) = W_next;

        [~, BST(j)] = max(W_next);
    end
end
