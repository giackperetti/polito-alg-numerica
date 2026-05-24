clear;
A = [304,556,152,-128;138,237,69,-63;270,423,135,-141;436,742,218,-206]/1000;
v = [-1;0;2;0];
w = [1;0;-1;1];


% Sistema omogeneo: da rref leggiamo pivot, variabili libere e base del ker
R = rref(A)
rk = rank(A);
fprintf('rank(A) = %d  =>  dim(Ker) = %d\n', rk, 4-rk);

% Con dim(Ker)=1, dalla rref si legge un unico vettore libero.
% v e w appartengono a quel ker (cioe' sono multipli di quel vettore)?
fprintf('rank([v,w]) = %d\n', rank([v,w]));  % 1 => stessa direzione, 2 => no

[V, D] = eig(A)