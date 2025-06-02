function states = generateStates(N)
    states = [];
    for i = 0:N
        for j = 0:(N - i)
            k = N - i - j;
            states(end+1, :) = [i, j, k];
        end
    end
end