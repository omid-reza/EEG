clear;
load dataset\data.mat;
addpath(genpath('power'));
Power(EEG, 8, 12, "active", "ec", "Alpha.txt");