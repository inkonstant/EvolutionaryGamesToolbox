function setup()
% SETUP  Adds the EvolutionaryGamesToolbox and its subfolders to the MATLAB path.
    
    % Get the full path to the folder where this script lives
    toolboxPath = fileparts(mfilename('fullpath'));

    % Add the toolbox and all subfolders to the MATLAB path
    addpath(genpath(fullfile(toolboxPath, 'Code')));

    % Save the path so it persists in future MATLAB sessions
    try
        savepath;
        disp('Paths added and saved successfully.')
    catch
        warning('Paths added but not saved permanently. You need to run matlab as administrator.')
    end

    disp('EvolutionaryGamesToolbox setup complete.')
end