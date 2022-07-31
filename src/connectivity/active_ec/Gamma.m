clear;
load dataset\data.mat;
addpath(genpath('src/connectivity'));
Connectivity(EEG, 30, 0.5, 200, "active", "ec", "Gamma.txt");