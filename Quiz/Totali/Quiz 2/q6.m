clear;

v = 1:30;
n = size(v,2);

somma = 0;
for k = 1:n
    somma = somma + (log(v(k)))/(sqrt(v(k)));
end

somma