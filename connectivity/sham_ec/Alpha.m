clear;
load dataset\data.mat;
addpath(genpath('connectivity'));
Connectivity(EEG, 8, 0.5, 12, "sham", "ec", "Alpha.txt");