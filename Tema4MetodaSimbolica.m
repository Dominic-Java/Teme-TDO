clc; clear; close all;

%% Minimul unei funcții de o variabilă (Numeric)
f1 = @(x) x.^4 - 3*x.^3 + 2; % Definirea funcției
x0 = 0; % Punct inițial
options = optimset('Display', 'off'); % Ascundere mesaje fminunc
[x_min1, f_min1] = fminunc(f1, x0, options); % Căutare minim
disp(['Minimul numeric pentru f(x) = x^4 - 3x^3 + 2: x = ', num2str(x_min1), ', f(x) = ', num2str(f_min1)]);

% Grafic pentru funcția de o variabilă
figure;
fplot(f1, [-2, 3]); hold on;
plot(x_min1, f_min1, 'ro', 'MarkerSize', 10, 'LineWidth', 2);
xlabel('x'); ylabel('f(x)');
title('Minimul funcției de o variabilă');
grid on;

%% Minimul unei funcții de două variabile (Numeric)
f2 = @(v) v(1).^2 + v(2).^2 + sin(v(1)) + cos(v(2)); % Funcția de două variabile
x0 = [0, 0]; % Punct inițial
[x_min2, f_min2] = fminsearch(f2, x0); % Căutare minim
disp(['Minimul numeric pentru f(x,y) = x^2 + y^2 + sin(x) + cos(y): x = ', num2str(x_min2(1)), ', y = ', num2str(x_min2(2)), ', f(x,y) = ', num2str(f_min2)]);

% Reprezentare grafică 3D pentru funcția de două variabile
x = linspace(-5, 5, 100);
y = linspace(-5, 5, 100);
[X, Y] = meshgrid(x, y);
Z = X.^2 + Y.^2 + sin(X) + cos(Y);

figure;
surf(X, Y, Z);
hold on;
plot3(x_min2(1), x_min2(2), f_min2, 'ro', 'MarkerSize', 10, 'LineWidth', 2);
xlabel('X'); ylabel('Y'); zlabel('f(X,Y)');
title('Minimul funcției de două variabile');
shading interp;
grid on;
