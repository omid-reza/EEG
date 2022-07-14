clear;
load data\data.mat;

first_group_channels='F3';
second_group_channels='P3';
trial_index=1;
result=[];
for cent_frequency = 8:0.5:12
    time      = -1.5:1/EEG.srate:1.5;
    s         = 8/(2*pi*cent_frequency);
    wavelet   = exp(2*1i*pi*cent_frequency.*time) .* exp(-time.^2./(2*s^2));
    nWave = length(time);
    half_wavN = (nWave-1)/2;
    nData = EEG.pnts;
    nConv = nWave + nData - 1;
    
    waveletX = fft(wavelet,nConv);
    waveletX = waveletX ./ max(waveletX);
    
    first_group_channel_indexs=strcmpi(first_group_channels, [EEG.channels.labels]);
    second_group_channel_indexs=strcmpi(second_group_channels, [EEG.channels.labels]);
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
    
    figure(1);
    subplot(211);
    plot(EEG.times, real_data);
    
    subplot(212);
    plot(EEG.times, phase_data);
    
    res=abs(mean(exp(1i*diff(phase_data))));
    result(end+1)=res;
    pause(0.5);
end