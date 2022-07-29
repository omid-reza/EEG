clear;
load dataset\data.mat;
addpath(genpath('connectivity'));
Connectivity(EEG, 4, 0.5, 7, "sham", "eo", "Theta.txt");