clear;
load dataset\data.mat;
addpath(genpath('amplitude'));
Amplitude(EEG, 30, 200, "active", "ec", "Gamma.txt");