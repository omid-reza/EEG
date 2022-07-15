clear;
load data\data.mat;

% TODO: Extend calulation to more channel(Group(s))
channel='F3';
channel_index=strcmpi(channel, [EEG.channels.labels]);
result=[];
welch.kernel.window_size=2*EEG.srate;
for trial_index=1:EEG.active.trialsCount
    % Skip computation for trials that should be excluded
    if ismember(trial_index, EEG.active.ec.excluded_trials)
        continue;
    end
    % Calulate Welch method based on params
    welch.signal.data=squeeze(EEG.active.ec.data(1, trial_index, channel_index, :))';
    welch.kernel.data=hamming(welch.kernel.window_size);
    [welch.PSD_estimate, welch.cyclical_frequencies]=pwelch(welch.signal.data, welch.kernel.data, round(welch.kernel.window_size/4), EEG.srate*100, EEG.srate);
    % Extract Alpha band power and stash it into an array that is named result
    index8=dsearchn(welch.cyclical_frequencies, 8);
    index12=dsearchn(welch.cyclical_frequencies, 12);
    result(end+1)=sum(welch.PSD_estimate(index8:index12));
end
% Write response(Alpha band powers) into a file
fileID=fopen("result\power\active_ec\Alpha.txt", "w");
fprintf(fileID, '%5d \n', result);
fclose(fileID);

% TODO: do the same process for trials that are stored in 'post' folder