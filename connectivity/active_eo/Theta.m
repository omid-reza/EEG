clear;
load dataset\data.mat;
addpath(genpath('connectivity'));
Connectivity(EEG, 4, 0.5, 7, "active", "eo", "Theta.txt");