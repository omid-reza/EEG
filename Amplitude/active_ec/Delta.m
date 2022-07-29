clear;
load dataset\data.mat;
addpath(genpath('amplitude'));
Amplitude(EEG, 1, 3, "active", "ec", "Delta.txt");