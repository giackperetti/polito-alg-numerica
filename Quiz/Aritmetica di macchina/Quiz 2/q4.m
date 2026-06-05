clear;

% Parametri iniziali
N = 10;
a = 1.273745e2;
b = 1.273211e3;

for t = [4, 6, 7]
    ea = floor(log10(abs(a))) + 1;
    fl_a = round(a * 10^(t - ea)) * 10^(ea - t);
    
    eb = floor(log10(abs(b))) + 1;
    fl_b = round(b * 10^(t - eb)) * 10^(eb - t);
    
    diff_esatta = fl_a - fl_b;
    ediff = floor(log10(abs(diff_esatta))) + 1;
    a_minus_b = round(diff_esatta * 10^(t - ediff)) * 10^(ediff - t);
    
    % Visualizzazione dei risultati
    fprintf('Per t = %d:\n', t);
    fprintf('  fl(a) = %.4f\n', fl_a);
    fprintf('  fl(b) = %.4f\n', fl_b);
    fprintf('  fl(a) (-) fl(b) = %.4f\n', a_minus_b);
    fprintf('  (Nessuna perdita catastrofica di cifre)\n\n');
end