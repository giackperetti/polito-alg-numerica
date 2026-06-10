clear;
clc;

a_esatto = 2.136797;
b_esatto = 2.133500;
t = 4;
eps_M = 0.5 * 10^(1-t);

a_barra = 2.137; 
b_barra = 2.134; 

s_esatto = a_esatto - b_esatto;
s_barra = a_barra - b_barra;
err_rel = abs(s_barra - s_esatto) / abs(s_esatto);

fprintf('Precisione di macchina eps_M: %.4f\n', eps_M);
fprintf('s esatto: %.6f\n', s_esatto);
fprintf('s barra (macchina): %.6f\n', s_barra);
fprintf('Errore relativo: %.4f\n', err_rel);

if err_rel > eps_M
    disp('La differenza relativa è maggiore di eps_M.');
end