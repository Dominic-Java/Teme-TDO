clc; clear; close all;

%%  Definirea funcției de două variabile
f = @(x, y) x.^3 - 3*x.*y.^2; % Exemplu: funcția "sadelă"

%%  Punctul în care verificăm FONC
x0 = [1, 1];

%% Calcul numeric al gradientului
h = 1e-5;
df_dx = (f(x0(1) + h, x0(2)) - f(x0(1), x0(2))) / h;
df_dy = (f(x0(1), x0(2) + h) - f(x0(1), x0(2))) / h;
grad_f = [df_dx, df_dy];  % Gradientul funcției

%%  Verificare FONC
if norm(grad_f) < 1e-4
    disp(['Punctul (', num2str(x0(1)), ', ', num2str(x0(2)), ') este candidat pentru extrem (𝛻f ≈ 0).']);
else
    disp(['Punctul (', num2str(x0(1)), ', ', num2str(x0(2)), ') NU este extrem (𝛻f ≠ 0).']);
end

%%  Reprezentare grafică a funcției și gradientului
[X, Y] = meshgrid(linspace(-2, 2, 30), linspace(-2, 2, 30));
Z = f(X, Y);

figure;
surf(X, Y, Z, 'FaceAlpha', 0.7);
hold on;
plot3(x0(1), x0(2), f(x0(1), x0(2)), 'ro', 'MarkerSize', 10, 'LineWidth', 2);
quiver3(x0(1), x0(2), f(x0(1), x0(2)), grad_f(1), grad_f(2), 0, 'r', 'LineWidth', 2);
xlabel('X'); ylabel('Y'); zlabel('f(X,Y)');
title('Verificare FONC și vizualizare gradient');
grid on;
