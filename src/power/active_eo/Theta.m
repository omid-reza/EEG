clear;
load dataset\data.mat;
addpath(genpath('src/power'));
Power(EEG, 4, 7, "active", "eo", "Theta.txt");