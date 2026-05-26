clear;

A = [
    1,0,0,0,0,-2,0,0,0,0 ;
    0,1,1,-1,1,-1,-1,3,-3,3 ;
    0,0,2,-1,1,1,-1,3,-3,3 ;
    0,0,0,1,0,0,0,0,0,0 ;
    0,0,0,0,1,0,0,0,0,0 ;
    0,0,0,0,0,3,0,0,0,0 ;
    0,0,0,0,0,0,3,-3,3,-3 ;
    0,0,0,1,-1,-1,1,-1,3,-3 ;
    0,0,0,1,0,0,0,0,2,0 ;
    0,0,0,0,1,1,-1,1,-1,3
];

I = eye(10);

g_1 = 10 - rank(A - 1*I);
g_3 = 10 - rank(A - 3*I);
g_0 = 10 - rank(A - 0*I);
g_2 = 10 - rank(A - 2*I);

fprintf('Molteplicità geometrica di 1: %d (Opzione 1: uguale a 5)\n', g_1);
fprintf('Molteplicità geometrica di 3: %d (Opzione 2: >= 3)\n', g_3);
fprintf('Molteplicità geometrica di 0: %d (Opzione 3: uguale a 2)\n', g_0);
fprintf('Molteplicità geometrica di 2: %d (Opzione 4: <= 3)\n', g_2);