clear;
load dataset\data.mat;
addpath(genpath('connectivity'));
Connectivity(EEG, 12, 0.5, 28, "sham", "eo", "Beta.txt");