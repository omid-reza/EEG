clear;
load dataset\data.mat;
addpath(genpath('amplitude'));
Amplitude(EEG, 4, 7, "sham", "eo", "Theta.txt");