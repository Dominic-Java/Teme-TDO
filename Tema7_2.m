% Valori proprii ale Hessianei
eigenvalues = eig(Hessian_f);

disp('Valorile proprii ale Hessianei sunt:');
disp(eigenvalues);

% Verificarea conditiei SONC
if all(eigenvalues > 0)
    disp('Conditia SONC este îndeplinită (punct de minim local).');
else
    disp('Conditia SONC nu este îndeplinită (x* = (0,0) nu este punct de minim local).');
end
