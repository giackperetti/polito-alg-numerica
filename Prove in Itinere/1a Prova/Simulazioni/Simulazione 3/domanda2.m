clear;

A = [-2, 6, 24; 6, -11, -58; -34, 60, 327; -112, 217, 1112];
b = [128; -272; 1498; 5252];
P = [-28; 20; -2];

check_r1 = A(1:2, :) * P == b(1:2);
appartiene_r1 = all(check_r1);

check_r2 = A(3:4, :) * P == b(3:4);
appartiene_r2 = all(check_r2);

fprintf('Il punto P appartiene a r1? %s\n', string(appartiene_r1));
fprintf('Il punto P appartiene a r2? %s\n', string(appartiene_r2));