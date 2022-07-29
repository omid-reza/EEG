clear;
load dataset\data.mat;
addpath(genpath('power'));
Power(EEG, 1, 3, "sham", "ec", "Delta.txt");