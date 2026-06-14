clear;

N = 2;
q_min = -1;
q_max = 2;

count = 0;

for d2 = 0:1
    m = 1/2 + d2/4; 
    
    for q = q_min:q_max
        valore_assoluto = m * (N^q);
        
        if valore_assoluto > 1
            count = count + 2; % +2 per considerare sia (+x) che (-x)
        end
    end
end

count