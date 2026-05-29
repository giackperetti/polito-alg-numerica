clear;

v1 = [1, 2, -1,  0,  3];
v2 = [2, -1, 0,  1,  1];
v3 = [0,  1, 2, -1,  4];
v4 = [3,  0, 1,  2, -1];


gen_V1 = v2 + v1;
gen_V2 = v4 - v3;

gen_W1 = v1 - v4;
gen_W2 = v2 + v3;

span_V = [gen_V1; gen_V2];
span_W = [gen_W1; gen_W2];
span_VW = [span_V; span_W]; % spazio somma V+W

dim_V = rank(span_V);
dim_W = rank(span_W);
dim_VW = rank(span_VW);

dim_intersezione = dim_V + dim_W - dim_VW

% risposta corretta: C