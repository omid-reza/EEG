clear;
load dataset\data.mat;
addpath(genpath('amplitude'));
Amplitude(EEG, 30, 200, "sham", "ec", "Gamma.txt");