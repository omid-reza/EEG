clear;
load dataset\data.mat;
addpath(genpath('src/connectivity'));
Connectivity(EEG, 1, 0.5, 3, "active", "eo", "Delta.txt");