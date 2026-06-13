clear;

v = (1:30)';

somma = 0;
for k = 1:30
    somma = somma + (log(v(k))/sqrt(v(k)));
end

somma