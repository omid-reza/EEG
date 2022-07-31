clear;
load dataset\data.mat;
addpath(genpath('src/amplitude'));
Amplitude(EEG, 12, 28, "sham", "ec", "Beta.txt");