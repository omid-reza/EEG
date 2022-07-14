clear;
load data\data.mat;

% TODO: extend calulation to more channel(Group(s))
result=[];
groups.first.channels.labels='F3';
groups.second.channels.labels='P3';
groups.first.channels.indexs=strcmpi(groups.first.channels.labels, [EEG.channels.labels]);
groups.second.channels.indexs=strcmpi(groups.second.channels.labels, [EEG.channels.labels]);

for trial_index=1:EEG.active.trialsCount
    % Skip calculation for trials that should be excluded
    if ismember(trial_index, EEG.active.ec.excluded_trials)
        continue;
    end
    res=[];
    % Compute Welch method with alpha band frequencties
    for cent_frequency=8:0.5:12
        % Define Morlet wavelet based on the params
        % TODO : fix Morlet wavelet's time duration
        morlet.time=-1.5:1/EEG.srate:1.5;
        morlet.s         = 8/(2*pi*cent_frequency);
        morlet.sine_wave=exp(2*1i*pi*cent_frequency.*morlet.time);
        morlet.gaussian_wave=exp(-morlet.time.^2./(2*morlet.s^2));
        morlet.data = morlet.sine_wave.* morlet.gaussian_wave;
        morlet.length=length(morlet.time);
        morlet.half_length = (morlet.length-1)/2;
        convolution.length = morlet.length + EEG.pnts - 1;
        morlet.fft.data= fft(morlet.data, convolution.length);
        % Normalize the wavelet
        morlet.fft.data = morlet.fft.data ./ max(morlet.fft.data);
        
        groups.first.data=squeeze(EEG.active.ec.data(1, trial_index, groups.first.channels.indexs, :))';
        groups.second.data=squeeze(EEG.active.ec.data(1, trial_index, groups.second.channels.indexs, :))';
        
        convolution.phase.data=zeros(2, EEG.pnts);
        
        dataX = fft(groups.first.data, convolution.length);
        as = ifft(morlet.fft.data.*dataX, convolution.length);
        as = as(morlet.half_length+1:end-morlet.half_length);
        
        convolution.phase.data(1,:) = angle(as);
        
        dataX = fft(groups.second.data, convolution.length);
        as = ifft(morlet.fft.data.*dataX, convolution.length);
        as = as(morlet.half_length+1:end-morlet.half_length);
        
        convolution.phase.data(2,:) = angle(as);
        
        % Calculate connectivity
        res(end+1)=abs(mean(exp(1i*diff(convolution.phase.data))));
    end
    % Stash Alpha band connectivity by getting mean of the elements of res array into an array that is named result
    result(end+1)=mean(res);
end
% Write response(Alpha band connectivities) into the file
fileID=fopen("result\connectivity\active_ec\Alpha.txt", "w");
fprintf(fileID, '%5d \n', result);
fclose(fileID);