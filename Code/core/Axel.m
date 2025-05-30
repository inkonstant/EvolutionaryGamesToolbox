function Scores = Axel(B, Strategies, Pop, T)
    N = sum(Pop);
    Scores = zeros(1, N);

    Players = CreatePlayers(Strategies, Pop, N);

    for i = 1:N
        for j = i+1:N            
            for t = 1:T
                move_i = feval(Players(i).strategy, Players(i).history);
                move_j = feval(Players(j).strategy, Players(j).history);

               if move_i == 'C' && move_j == 'C'
                   payoff_i = B(1,1);
                   payoff_j = B(1,1);
               elseif move_i == 'C' && move_j == 'D'
                   payoff_i = B(1,2);
                   payoff_j = B(2,1);
               elseif move_i == 'D' && move_j == 'C'
                   payoff_i = B(2,1);
                   payoff_j = B(1,2);
               elseif move_i == 'D' && move_j == 'D'
                   payoff_i = B(2,2);
                   payoff_j = B(2,2);
               end

               Scores(i) = Scores(i) + payoff_i;
               Scores(j) = Scores(j) + payoff_j;
                
               Players(i).history = [Players(i).history; move_i, move_j];
               Players(j).history = [Players(j).history; move_j, move_i];
            end
            Players(i).history = zeros(0,2);
            Players(j).history = zeros(0,2);
        end
    end
end

function Players = CreatePlayers(Strategies, Pop, N)
    Players = repmat(struct('strategy', [], 'history', zeros(0,2)), 1, N);
    idx = 1;
    for s = 1:length(Strategies)
        for p = 1:Pop(s)
            Players(idx).strategy = Strategies{s};
            idx = idx + 1;
        end
    end
end