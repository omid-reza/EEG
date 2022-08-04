function EEG = initialize_eeg()
%initialize_eeg Initializes EEG variable.
%   Initialize different parts of EEG variable in order to user it through analyse.

% setup basic information
EEG.srate=250; % rate of signal
EEG.trialLength=2; % 2 second of reconrding
EEG.pnts=EEG.trialLength*EEG.srate;
EEG.times=1/EEG.srate:1/EEG.srate:EEG.trialLength; % time of the signals
EEG.channels.labels=["Fp1", "Fp2", "F3", "F4", "C3", "C4", "P3", "P4", "O1", "O2", "F7", "F8", "T3", "T4", "T5", "T6", "Fz", "Cz", "Pz"];

% setup information about sham group
EEG.sham.trialsCount=14;
EEG.sham.ec.excluded_trials=[4]; % exlude some trial due to lack of data
EEG.sham.eo.excluded_trials=[5]; % exlude some trial due to lack of data
EEG.sham.ec.data=zeros(2, EEG.sham.trialsCount, 19, EEG.srate*EEG.trialLength); % pre/post, trials, chans, signal
EEG.sham.eo.data=zeros(2, EEG.sham.trialsCount, 19, EEG.srate*EEG.trialLength); % pre/post, trials, chans, signal

% setup information about active group
EEG.active.trialsCount=16;
EEG.active.ec.excluded_trials=[2 9 13 16]; % exlude some trial due to lack of data
EEG.active.eo.excluded_trials=[2 3 9 12 13 16]; % exlude some trial due to lack of data
EEG.active.ec.data=zeros(2, EEG.active.trialsCount, 19, EEG.srate*EEG.trialLength); % pre/post, trials, chans, signal
EEG.active.eo.data=zeros(2, EEG.active.trialsCount, 19, EEG.srate*EEG.trialLength); % pre/post, trials, chans, signal
end