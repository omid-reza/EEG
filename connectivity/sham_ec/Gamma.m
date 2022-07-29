clear;
load dataset\data.mat;
addpath(genpath('connectivity'));
Connectivity(EEG, 30, 0.5, 200, "sham", "ec", "Gamma.txt");