clear;
addpath(genpath('src/data_loaders'));

EEG=initialize_eeg();

EEG=load_data_active_ec(EEG);
EEG=load_data_active_eo(EEG);
EEG=load_data_sham_ec(EEG);
EEG=load_data_sham_eo(EEG);

save('dataset\data', 'EEG');