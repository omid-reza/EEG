clear;
load dataset\data.mat;
addpath(genpath('src/amplitude'));
Amplitude(EEG, 1, 3, "sham", "ec", "Delta.txt");