function best = findBestStrategies(payoffs)
    max_pay = max(payoffs);
    best = find(abs(payoffs - max_pay) < 1e-6);
end