clear;
clc;

x = 10^(-4);
y_canc = 7 - sqrt(49 + x^2);


% Razionalizzo per rimuovere la cancellazione numerica (moltiplico
% numeratore e denominatore per `7 + sqrt(49 + x^2`):
% y = (7 - sqrt(49 + x^2)) * (7 + sqrt(49 + x^2)) / (7 + sqrt(49 + x^2))
% y = (49 - (49 + x^2)) / (7 + sqrt(49 + x^2))
% y = -x^2 / (7 + sqrt(49 + x^2))
y_fix = -x^2 / (7 + sqrt(49 + x^2));

err_rel = abs((y_canc - y_fix) / y_fix)