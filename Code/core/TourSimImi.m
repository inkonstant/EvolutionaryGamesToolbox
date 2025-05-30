function [POP, BST] = TourSimImi(B, Strategies, POP0, K, T, J)
    S = length(Strategies);
    
    POP = zeros(J+1, S);
    POP(1, :) = POP0(:)';
    BST = zeros(J, 1);

    V = calcV(B, Strategies, T);

    for j = 1:J
        W = POP(j,:);
        g = zeros(1, S);

        for x = 1:S
            for y = 1:S
                g(x) = g(x) + W(y) * V(x,y);
            end
            g(x) = g(x) - V(x,x);
        end

        maxPayOff = max(g);
        bestStratIndex = find(g == maxPayOff);

        if length(bestStratIndex) > 1
            bestStratIndex = bestStratIndex(randi(length(bestStratIndex)));
        end

        k = K;
        W_next = W;

        while k > 0
            possible = find((1:S) ~= bestStratIndex & W_next > 0);

            if isempty(possible)
                break;
            end

            fromIndex = possible(randi(length(possible)));

            W_next(fromIndex) = W_next(fromIndex) - 1;
            k = k - 1;
        end
        W_next(bestStratIndex) = W_next(bestStratIndex) + (K - k);

        POP(j+1, :) = W_next;
        BST(j) = bestStratIndex;
    end
end