clear;

A = [305/74, 244/333, 610/37, 61/37;
     244/185, 1220/111, 366/37, 61/111;
     1098/259, 61/111, 854/37, 122/333;
     183/37, 366/37, 976/259, 122/37;
     488/111, 732/259, 366/37, 244/37;
     488/185, 366/185, 244/37, 732/37];

[Q, R] = qr(A);

% A)
last_two_rows_zero = all(abs(R(5:6, :)) < 1e-9, 'all');
ans_A = mat2str((rank(R) > rank(A)) && last_two_rows_zero)

% B)
R_tilde_4 = R(1:4, :);
R_tilde_max_rank = (rank(R_tilde_4) == 4);
ans_B = mat2str(R_tilde_max_rank && last_two_rows_zero)

% C)
is_Q_inv = (rank(Q) == 6);
R_tilde_5 = R(1:5, :);
not_max_rank = (rank(R_tilde_5) < 4);
last_row_zero = all(abs(R(6, :)) < 1e-9);
ans_C = mat2str(is_Q_inv && not_max_rank && last_row_zero)

% D)
dim_col_A = rank(A);
dim_col_Q = rank(Q);
rR = rank(R);
ans_D = mat2str((dim_col_A == dim_col_Q) && (rR == 4))