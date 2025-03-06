% Definirea functiei f(x,y)
f = @(x, y) x.^2 - y.^2;

% Derivatele parțiale
df_dx = @(x, y) 2*x;   % Derivata parțială față de x
df_dy = @(x, y) -2*y;  % Derivata parțială față de y

% Evaluarea gradientului în punctul (0,0)
x_star = 0;
y_star = 0;
grad_f_at_0_0 = [df_dx(x_star, y_star), df_dy(x_star, y_star)];

disp('Gradientul la x* = (0,0) este:');
disp(grad_f_at_0_0);

% Verificarea condiției FONC (gradientul trebuie să fie zero)
if all(grad_f_at_0_0 == 0)
    disp('Conditia FONC este îndeplinită.');
else
    disp('Conditia FONC nu este îndeplinită.');
end

% Calculul Hessienei
Hessian_f = [2, 0; 0, -2];

% Evaluarea Hessienei în punctul (0,0)
disp('Matricea Hessiana la x* = (0,0) este:');
disp(Hessian_f);

% Verificarea condiției SONC
% Pentru SONC, Hessiana trebuie să fie pozitiv semidefinită
% Verificăm semnul valorilor proprii ale Hessienei
eigenvalues = eig(Hessian_f);
disp('Valorile proprii ale Hessienei:');
disp(eigenvalues);

if all(eigenvalues >= 0)
    disp('Conditia SONC este îndeplinită.');
else
    disp('Conditia SONC nu este îndeplinită.');
end

% Reprezentarea grafică a funcției
[x_val, y_val] = meshgrid(-2:0.1:2, -2:0.1:2);
f_vals = x_val.^2 - y_val.^2;

% Reprezentarea grafică a funcției
figure;
surf(x_val, y_val, f_vals);
title('Reprezentarea grafică a funcției f(x, y) = x^2 - y^2');
xlabel('x');
ylabel('y');
zlabel('f(x, y)');
