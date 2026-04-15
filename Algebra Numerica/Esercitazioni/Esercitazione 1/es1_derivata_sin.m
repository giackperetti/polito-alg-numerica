clear;

x = pi/4;
k = 1:50;
h = 2.^(-k);

% definisco la derivata del seno approssimata usando il rapporto incrementale
N_canc = sin(x + h) - sin(x);
r_canc = N_canc ./ h;

% risolvo la cancellazione numerica con la seguente formula di prostaferesi:
% sin(a) + sin(b) = 2 * sin((a + b)/2) * cos((a - b)/2)
N_fix = 2 * sin(h./2) .* cos(x + h./2);
r_fix = N_fix ./ h;

% calcolo gli errori relativi delle due derivate approssimate che ho
% calcolato, confrontado il valore approssimato con quello esatto
dsin = cos(x);
e_canc = abs(dsin - r_canc)/abs(dsin);
e_fix = abs(dsin - r_fix)/abs(dsin);

% plotto i risultati su un grafico con asse y in scala logaritmica
semilogy(k, e_canc);
hold on;
semilogy(k, e_fix);


