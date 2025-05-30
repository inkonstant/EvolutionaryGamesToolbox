function [POP, BST, FIT] = TourTheFit(B, Strategies, POP0, T, J)
    S = length(Strategies);
    
    POP = zeros(J+1, S);
    POP(1, :) = POP0(:)';
    BST = zeros(J, 1);
    FIT = zeros(J, S);

    V = calcV(B, Strategies, T);

    Pi = sum(POP0);

    for j = 1:J
        W = POP(j,:);
        g = zeros(1, S);

        for x = 1:S
            for y = 1:S
                g(x) = g(x) + W(y) * V(x,y);
            end
            g(x) = g(x) - V(x,x);
        end

        FIT(j, :) = g;

        t = sum(W .* g);

        W_next = Pi * (W .* g) / t;
        POP(j+1, :) = W_next;

        [~, BST(j)] = max(W_next);
    end
end