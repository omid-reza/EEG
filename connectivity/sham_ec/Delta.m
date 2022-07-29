clear;
load dataset\data.mat;
addpath(genpath('connectivity'));
Connectivity(EEG, 1, 0.5, 3, "sham", "ec", "Delta.txt");