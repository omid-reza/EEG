clear;
load dataset\data.mat;
addpath(genpath('src/connectivity'));
Connectivity(EEG, 12, 0.5, 28, "active", "eo", "Beta.txt");