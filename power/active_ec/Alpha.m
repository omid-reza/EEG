clear;
load data\data.mat;

% TODO: extend calulation to more channel(Group(s))
channel='F3';
channel_index=strcmpi(channel, [EEG.channels.labels]);
result=[];
for trial_index=1:EEG.active.trialsCount
    % Skip calculation for trials that should be excluded
    if ismember(trial_index, EEG.active.ec.excluded_trials)
        continue;
    end
    % Calulate welch method with specific params
    data=squeeze(EEG.active.ec.data(1, trial_index, channel_index, :))';
    winsize=2*EEG.srate;
    [pxx, f]=pwelch(data, hamming(winsize), round(winsize/4), EEG.srate*100, EEG.srate);
    % Extract Alpha band power and stash into a array that is named result
    in8=dsearchn(f, 8);
    in12=dsearchn(f, 12);
    result(end+1)=sum(pxx(in8:in12));
end
% Write response(Alpha band powers) into the file
fileID=fopen("result\power\active_ec\Alpha.txt", "w");
fprintf(fileID, '%5d \n', result);
fclose(fileID);