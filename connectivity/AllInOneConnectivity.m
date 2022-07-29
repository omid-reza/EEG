clear;
load dataset\data.mat;
addpath(genpath('connectivity'));

Connectivity(EEG, 8, 0.5, 12, "active", "ec", "Alpha.txt");
Connectivity(EEG, 12, 0.5, 28, "active", "ec", "Beta.txt");
Connectivity(EEG, 1, 0.5, 3, "active", "ec", "Delta.txt");
Connectivity(EEG, 30, 0.5, 200, "active", "ec", "Gamma.txt");
Connectivity(EEG, 4, 0.5, 7, "active", "ec", "Theta.txt");

Connectivity(EEG, 8, 0.5, 12, "active", "eo", "Alpha.txt");
Connectivity(EEG, 12, 0.5, 28, "active", "eo", "Beta.txt");
Connectivity(EEG, 1, 0.5, 3, "active", "eo", "Delta.txt");
Connectivity(EEG, 30, 0.5, 200, "active", "eo", "Gamma.txt");
Connectivity(EEG, 4, 0.5, 7, "active", "eo", "Theta.txt");

Connectivity(EEG, 8, 0.5, 12, "sham", "ec", "Alpha.txt");
Connectivity(EEG, 12, 0.5, 28, "sham", "ec", "Beta.txt");
Connectivity(EEG, 1, 0.5, 3, "sham", "ec", "Delta.txt");
Connectivity(EEG, 30, 0.5, 200, "sham", "ec", "Gamma.txt");
Connectivity(EEG, 4, 0.5, 7, "sham", "ec", "Theta.txt");

Connectivity(EEG, 8, 0.5, 12, "sham", "eo", "Alpha.txt");
Connectivity(EEG, 12, 0.5, 28, "sham", "eo", "Beta.txt");
Connectivity(EEG, 1, 0.5, 3, "sham", "eo", "Delta.txt");
Connectivity(EEG, 30, 0.5, 200, "sham", "eo", "Gamma.txt");
Connectivity(EEG, 4, 0.5, 7, "sham", "eo", "Theta.txt");