clear;
load dataset\data.mat;
addpath(genpath('src/amplitude'));
Amplitude(EEG, 30, 200, "active", "eo", "Gamma.txt");