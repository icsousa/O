clc, clear, close all;

w0 = [20; 1];
eta = 0.15; 
beta = 0.9; % Parâmetro de momentum
epsilon = 1e-4;
Kmax = 500;

[w_hb, F_hb, out_hb] = HB(@F1withgrad06, w0, eta, beta, epsilon, Kmax)
