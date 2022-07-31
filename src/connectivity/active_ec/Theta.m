clear;
load dataset\data.mat;
addpath(genpath('src/connectivity'));
Connectivity(EEG, 4, 0.5, 7, "active", "ec", "Theta.txt");