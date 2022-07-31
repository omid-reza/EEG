clear;
load dataset\data.mat;
addpath(genpath('src/power'));
Power(EEG, 8, 12, "sham", "ec", "Alpha.txt");