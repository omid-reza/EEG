clear;
load data\data.mat;

pre_post_folder_names=["pre\", "post\"];
groups.first.channels.labels=["F3", "Fz", "Fp1"];
groups.second.channels.labels=["P3", "T5", "T3"];
groups.first.channels.indexs= zeros(1, length(groups.first.channels.labels));
groups.second.channels.indexs=zeros(1, length(groups.second.channels.labels));

% Calculate the index of each channel and also store it into an array
for list_index=1:length(groups.first.channels.labels)
    groups.first.channels.indexs(list_index)=find(strcmpi(groups.first.channels.labels(list_index), [EEG.channels.labels])==1);
end
for list_index=1:length(groups.second.channels.labels)
    groups.second.channels.indexs(list_index)=find(strcmpi(groups.second.channels.labels(list_index), [EEG.channels.labels])==1);
end

for pre_post_index=1:2
    result=[];    
    % Calculate connectivity for the trials
    for trial_index=1:EEG.active.trialsCount
        % Skip calculation for trials that should be excluded
        if ismember(trial_index, EEG.active.ec.excluded_trials)
            continue;
        end
        res=[];
        % Compute Welch method with alpha band frequencties
        for cent_frequency=8:0.5:12
            % Define Morlet wavelet based on the params
            morlet.time=-(EEG.trialLength/2):1/EEG.srate:(EEG.trialLength/2)-(1/EEG.srate);
            morlet.s= 8/(2*pi*cent_frequency);
            morlet.sine_wave=exp(2*1i*pi*cent_frequency.*morlet.time);
            morlet.gaussian_wave=exp(-morlet.time.^2./(2*morlet.s^2));
            morlet.data = morlet.sine_wave.* morlet.gaussian_wave;
            morlet.length=length(morlet.time);
            morlet.half_length = (morlet.length-1)/2;
            convolution.length = morlet.length + EEG.pnts - 1;
            morlet.fft.data= fft(morlet.data, convolution.length);
            % Normalize the wavelet
            morlet.fft.data = morlet.fft.data ./ max(morlet.fft.data);
            % Compute mean of channels of the groups and stash them
            groups.first.data =squeeze(mean(EEG.active.ec.data(pre_post_index, trial_index, groups.first.channels.indexs , :), 3))';
            groups.second.data=squeeze(mean(EEG.active.ec.data(pre_post_index, trial_index, groups.second.channels.indexs, :), 3))';
            
            convolution.phase.data=zeros(2, EEG.pnts);
            
            groups.first.fft = fft(groups.first.data, convolution.length);
            convolution.result = ifft(morlet.fft.data.*groups.first.fft, convolution.length);
            convolution.result = convolution.result(morlet.half_length+1:end-morlet.half_length);
            
            convolution.phase.data(1,:) = angle(convolution.result);
            
            groups.second.fft = fft(groups.second.data, convolution.length);
            convolution.result = ifft(morlet.fft.data.*groups.second.fft, convolution.length);
            convolution.result = convolution.result(morlet.half_length+1:end-morlet.half_length);
            
            convolution.phase.data(2,:) = angle(convolution.result);
            
            % Calculate connectivity
            res(end+1)=abs(mean(exp(1i*diff(convolution.phase.data))));
        end
        % Stash Alpha band connectivity by getting mean of the elements of res array into an array that is named result
        result(end+1)=mean(res);
    end
    % Write response(Alpha band connectivities) into the file
    fileID=fopen(strcat("result\connectivity\active_ec\", pre_post_folder_names(pre_post_index), "Alpha.txt"), "w");
    fprintf(fileID, '%5d \n', result);
    fclose(fileID);
end