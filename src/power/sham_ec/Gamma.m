clear;
load dataset\data.mat;
addpath(genpath('src/power'));
Power(EEG, 30, 200, "sham", "ec", "Gamma.txt");