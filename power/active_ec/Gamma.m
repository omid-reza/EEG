clear;
load dataset\data.mat;
addpath(genpath('power'));
Power(EEG, 30, 200, "active", "ec", "Gamma.txt");