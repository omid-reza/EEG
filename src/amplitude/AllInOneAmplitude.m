clear;
load dataset\data.mat;
addpath(genpath('src/amplitude'));

Amplitude(EEG, 8, 12, "active", "ec", "Alpha.txt");
Amplitude(EEG, 12, 28, "active", "ec", "Beta.txt");
Amplitude(EEG, 1, 3, "active", "ec", "Delta.txt");
Amplitude(EEG, 30, 200, "active", "ec", "Gamma.txt");
Amplitude(EEG, 4, 7, "active", "ec", "Theta.txt");

Amplitude(EEG, 8, 12, "active", "eo", "Alpha.txt");
Amplitude(EEG, 12, 28, "active", "eo", "Beta.txt");
Amplitude(EEG, 1, 3, "active", "eo", "Delta.txt");
Amplitude(EEG, 30, 200, "active", "eo", "Gamma.txt");
Amplitude(EEG, 4, 7, "active", "eo", "Theta.txt");

Amplitude(EEG, 8, 12, "sham", "ec", "Alpha.txt");
Amplitude(EEG, 12, 28, "sham", "ec", "Beta.txt");
Amplitude(EEG, 1, 3, "sham", "ec", "Delta.txt");
Amplitude(EEG, 30, 200, "sham", "ec", "Gamma.txt");
Amplitude(EEG, 4, 7, "sham", "ec", "Theta.txt");

Amplitude(EEG, 8, 12, "sham", "eo", "Alpha.txt");
Amplitude(EEG, 12, 28, "sham", "eo", "Beta.txt");
Amplitude(EEG, 1, 3, "sham", "eo", "Delta.txt");
Amplitude(EEG, 30, 200, "sham", "eo", "Gamma.txt");
Amplitude(EEG, 4, 7, "sham", "eo", "Theta.txt");