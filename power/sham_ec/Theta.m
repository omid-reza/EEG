clear;
load dataset\data.mat;
addpath(genpath('power'));
Power(EEG, 4, 7, "sham", "ec", "Theta.txt");