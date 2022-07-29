clear;
load dataset\data.mat;
addpath(genpath('power'));
Power(EEG, 30, 200, "active", "eo", "Gamma.txt");