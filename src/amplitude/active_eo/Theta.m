clear;
load dataset\data.mat;
addpath(genpath('src/amplitude'));
Amplitude(EEG, 4, 7, "active", "eo", "Theta.txt");