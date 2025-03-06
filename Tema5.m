clc; clear; close all;

% Definirea funcției de două variabile f(x, y) = x^2 + y^2 + sin(x*y)
f = @(x, y) x.^2 + y.^2 + sin(x.*y);

% Punctul în care calculăm derivata direcțională
x0 = [1, 2];  % (x0, y0)

% Vectorul direcțional (orice direcție alesă de utilizator, trebuie să fie unitate)
v = [1, -1];  % Direcția în care calculăm derivata
v = v / norm(v);  % Normalizare

% Calculul numeric al gradientului (aproximativ)
h = 1e-5;
df_dx = (f(x0(1) + h, x0(2)) - f(x0(1), x0(2))) / h;
df_dy = (f(x0(1), x0(2) + h) - f(x0(1), x0(2))) / h;

grad_f = [df_dx, df_dy];  % Gradientul funcției în x0
D_v_f = dot(grad_f, v);    % Derivata direcțională

% Afișare rezultat
disp(['Derivata direcțională în punctul (', num2str(x0(1)), ', ', num2str(x0(2)), ') pe direcția v = [', num2str(v), '] este ', num2str(D_v_f)]);

% Vizualizare funcție și direcția derivării
[X, Y] = meshgrid(linspace(-2, 2, 30), linspace(-2, 2, 30));
Z = f(X, Y);

figure;
surf(X, Y, Z);
hold on;
plot3(x0(1), x0(2), f(x0(1), x0(2)), 'ro', 'MarkerSize', 10, 'LineWidth', 2);
quiver3(x0(1), x0(2), f(x0(1), x0(2)), v(1), v(2), 0, 'r', 'LineWidth', 2);
xlabel('X'); ylabel('Y'); zlabel('f(X,Y)');
title('Vizualizare derivată direcțională');
grid on;
