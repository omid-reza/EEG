clear;
load dataset\data.mat;
addpath(genpath('power'));
Power(EEG, 12, 28, "active", "eo", "Beta.txt");