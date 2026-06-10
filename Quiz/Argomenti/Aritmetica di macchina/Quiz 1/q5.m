clear;
clc;

x1 = 1.7; d1 = 2.1e-9;
y1 = sqrt(x1 + d1) - sqrt(x1);
y1_tilde = d1 / (sqrt(x1 + d1) + sqrt(x1));
er1 = abs(y1 - y1_tilde) / abs(y1_tilde)

x2 = 31000; d2 = 7.1e-4;
y2 = sqrt(x2 + d2) - sqrt(x2);
y2_tilde = d2 / (sqrt(x2 + d2) + sqrt(x2));
er2 = abs(y2 - y2_tilde) / abs(y2_tilde)