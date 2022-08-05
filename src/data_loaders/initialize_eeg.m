function EEG = initialize_eeg()
%initialize_eeg Initializes EEG variable.
%   Initialize different parts of EEG variable in order to user it through analyse.

% setup basic information about signal the is analyzed
EEG.srate=250; % rate of signal
EEG.trialLength=2; % 2 second of reconrding
EEG.pnts=EEG.trialLength*EEG.srate;
EEG.times=1/EEG.srate:1/EEG.srate:EEG.trialLength; % time of the signals
EEG.channels.labels=["Fp1", "Fp2", "F3", "F4", "C3", "C4", "P3", "P4", "O1", "O2", "F7", "F8", "T3", "T4", "T5", "T6", "Fz", "Cz", "Pz"];

% setup information about sham group
EEG.sham.trialsCount=14;
EEG.sham.ec.excluded_trials=[2 3 4 5 9 12 13]; % exlude some trial due to artifacts or some problem to raw files
EEG.sham.eo.excluded_trials=[2 3 4 5 9 12 13]; % exlude some trial due to artifacts or some problem to raw files
EEG.sham.ec.data=zeros(2, EEG.sham.trialsCount, 19, EEG.srate*EEG.trialLength); % pre/post, trials, channels, signal
EEG.sham.eo.data=zeros(2, EEG.sham.trialsCount, 19, EEG.srate*EEG.trialLength); % pre/post, trials, channels, signal

% setup information about active group
EEG.active.trialsCount=16;
EEG.active.ec.excluded_trials=[2 3 4 5 9 12 13 15 16]; % exlude some trial due to artifacts or some problem to raw files
EEG.active.eo.excluded_trials=[2 3 4 5 9 12 13 15 16]; % exlude some trial due to artifacts or some problem to raw files
EEG.active.ec.data=zeros(2, EEG.active.trialsCount, 19, EEG.srate*EEG.trialLength); % pre/post, trials, channels, signal
EEG.active.eo.data=zeros(2, EEG.active.trialsCount, 19, EEG.srate*EEG.trialLength); % pre/post, trials, channels, signal
end