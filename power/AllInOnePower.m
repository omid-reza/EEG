clear;
load dataset\data.mat;
addpath(genpath('power'));

Power(EEG, 8, 12, "active", "ec", "Alpha.txt");
Power(EEG, 12, 28, "active", "ec", "Beta.txt");
Power(EEG, 1, 3, "active", "ec", "Delta.txt");
Power(EEG, 30, 200, "active", "ec", "Gamma.txt");
Power(EEG, 4, 7, "active", "ec", "Theta.txt");

Power(EEG, 8, 12, "active", "eo", "Alpha.txt");
Power(EEG, 12, 28, "active", "eo", "Beta.txt");
Power(EEG, 1, 3, "active", "eo", "Delta.txt");
Power(EEG, 30, 200, "active", "eo", "Gamma.txt");
Power(EEG, 4, 7, "active", "eo", "Theta.txt");

Power(EEG, 8, 12, "sham", "ec", "Alpha.txt");
Power(EEG, 12, 28, "sham", "ec", "Beta.txt");
Power(EEG, 1, 3, "sham", "ec", "Delta.txt");
Power(EEG, 30, 200, "sham", "ec", "Gamma.txt");
Power(EEG, 4, 7, "sham", "ec", "Theta.txt");

Power(EEG, 8, 12, "sham", "eo", "Alpha.txt");
Power(EEG, 12, 28, "sham", "eo", "Beta.txt");
Power(EEG, 1, 3, "sham", "eo", "Delta.txt");
Power(EEG, 30, 200, "sham", "eo", "Gamma.txt");
Power(EEG, 4, 7, "sham", "eo", "Theta.txt");