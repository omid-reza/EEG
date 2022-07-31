clear;
load dataset\data.mat;
addpath(genpath('src/amplitude'));
Amplitude(EEG, 8, 12, "active", "eo", "Alpha.txt");