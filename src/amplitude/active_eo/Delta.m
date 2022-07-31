clear;
load dataset\data.mat;
addpath(genpath('src/amplitude'));
Amplitude(EEG, 1, 3, "active", "eo", "Delta.txt");