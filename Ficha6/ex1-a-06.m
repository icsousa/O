clc, clear, close all;

w0 = [20; 1];
eta = 0.15; 
epsilon = 1e-4;
Kmax = 100; % Limite baixo porque para eta=0.15 o MDM diverge

[w_mdm, F_mdm, out_mdm] = MDM(@F1withgrad06, w0, eta, epsilon, Kmax)
