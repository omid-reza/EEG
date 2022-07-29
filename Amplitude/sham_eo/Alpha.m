clear;
load dataset\data.mat;
addpath(genpath('amplitude'));
Amplitude(EEG, 8, 12, "sham", "eo", "Alpha.txt");