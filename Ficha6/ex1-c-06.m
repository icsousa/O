clc, clear, close all;

w0 = [20; 1];
eta = 0.15; 
beta = 0.9; 
epsilon = 1e-4;
Kmax = 500;

[w_nag, F_nag, out_nag] = NAG(@F1withgrad06, w0, eta, beta, epsilon, Kmax)
