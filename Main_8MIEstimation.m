% IMPORTANT - This script requires the Matlab symbolic toolbox
% The code is the implementations of Double-Stage Kalman.

% Author: Xinzhe Gui
% Email: lwft@qq.com
%% environment config
clear all;
reset(symengine);
load('./Mat/StatePrediction.mat');
addpath(genpath(pwd));
%% Estimate Magnetic Inclination
% [Tbn,STbn]=OptimiseAlgebra(Tbn,'STbn');
hmag=Tbn*[magX;magY;magZ];

syms hmagX hmagY hmagZ real;
MI = atan2(hmagZ,sqrt(hmagX^2+hmagY^2));

% save equations and reset workspace
save('./Mat/MIEstimation.mat','hmag','MI');