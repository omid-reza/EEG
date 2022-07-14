clear;
load data\data.mat;

% TODO: extend calulation to more channel(Group(s))
first_group_channels='F3';
second_group_channels='P3';
result=[];
first_group_channel_indexs=strcmpi(first_group_channels, [EEG.channels.labels]);
second_group_channel_indexs=strcmpi(second_group_channels, [EEG.channels.labels]);

for trial_index=1:EEG.active.trialsCount
    % Skip calculation for trials that should be excluded
    if ismember(trial_index, EEG.active.ec.excluded_trials)
        continue;
    end
    res=[];
    % Calulate welch method with alpha bad frequencties
    for cent_frequency=8:0.5:12
        % Create Morelet wavelet
        % TODO : fix morelet wavelet's time duration
        time      = -1.5:1/EEG.srate:1.5;
        s         = 8/(2*pi*cent_frequency);
        wavelet   = exp(2*1i*pi*cent_frequency.*time) .* exp(-time.^2./(2*s^2));
        nWave = length(time);
        half_wavN = (nWave-1)/2;
        nData = EEG.pnts;
        nConv = nWave + nData - 1;
        % Normalize the wavelet
        waveletX = fft(wavelet,nConv);
        waveletX = waveletX ./ max(waveletX);
        
        first_group_data=squeeze(EEG.active.ec.data(1, trial_index, first_group_channel_indexs, :))';
        second_group_data=squeeze(EEG.active.ec.data(1, trial_index, second_group_channel_indexs, :))';
        
        phase_data=zeros(2, EEG.pnts);
        real_data=zeros(2, EEG.pnts);
        
        dataX = fft(first_group_data, nConv);
        as = ifft(waveletX.*dataX, nConv);
        as = as(half_wavN+1:end-half_wavN);
        
        phase_data(1,:) = angle(as);
        real_data(1,:)  = real(as);
        
        dataX = fft(second_group_data, nConv);
        as = ifft(waveletX.*dataX, nConv);
        as = as(half_wavN+1:end-half_wavN);
        
        phase_data(2,:) = angle(as);
        real_data(2,:)  = real(as);
        
        % calculate connectivity
        res(end+1)=abs(mean(exp(1i*diff(phase_data))));
    end
    % stash Alpha band connectivity by getting mean of the elements of res array into a array that is named result
    result(end+1)=mean(res);
end
% Write response(Alpha band connectivities) into the file
fileID=fopen("result\connectivity\active_ec\Alpha.txt", "w");
fprintf(fileID, '%5d \n', result);
fclose(fileID);