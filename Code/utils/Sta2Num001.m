function idx = Sta2Num001(state, S)
% STA2NUM001 Finds the index of a row in S that matches the given state

    % Each row of S is a state vector like [i j k]
    % This finds the index of the row that matches the input state
    idx = find(ismember(S, state, 'rows'), 1);

    if isempty(idx)
        error('State not found in S');
    end
end