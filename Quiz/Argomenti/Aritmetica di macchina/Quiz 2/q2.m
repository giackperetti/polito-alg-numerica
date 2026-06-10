clear;

N = 2;
t = 3;
q_min = -2;
q_max = 3;

numeri_positivi = [];

d1 = 1; 

for d2 = 0:1
    for d3 = 0:1
        mantissa = d1*(N^-1) + d2*(N^-2) + d3*(N^-3);
        
        for q = q_min:q_max
            num = mantissa * (N^q);
            numeri_positivi = [numeri_positivi, num];
        end
    end
end

cardinalita_positivi = length(unique(numeri_positivi));

fprintf('Il numero di numeri di macchina strettamente positivi è: %d\n', cardinalita_positivi);