clear;

x1 = 10^(-12);

f1_x = (exp(3*x1)-1)/x1
f2_x = 3 + (9*x1)/factorial(2) + 27*x1^2/factorial(3) + 81*x1^3/factorial(4) + 243*x1^4/factorial(5)

err_rel = abs(f2_x - f1_x)/abs(f2_x)