clc; clear; close all;

% Definirea domeniului
x = linspace(-5, 5, 100);
y = linspace(-5, 5, 100);
[X, Y] = meshgrid(x, y);

% Definirea funcției f(x, y) = x^2 + y^2 + sin(x) + cos(y)
Z = X.^2 + Y.^2 + sin(X) + cos(Y);

% Reprezentarea grafică 3D a funcției
figure;
surf(X, Y, Z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Reprezentare 3D a funcției');
shading interp;
hold on;

% Găsirea minimului
[minVal, minIndex] = min(Z(:));  % Găsim cea mai mică valoare și indexul ei
[minX, minY] = ind2sub(size(Z), minIndex);  % Convertim indexul în coordonate

% Punctul minim
minPoint = [X(minX, minY), Y(minX, minY), Z(minX, minY)];
plot3(minPoint(1), minPoint(2), minPoint(3), 'ro', 'MarkerSize', 10, 'LineWidth', 2);

% Afișare valori minime
disp(['Minimul local: X = ', num2str(minPoint(1)), ', Y = ', num2str(minPoint(2)), ', Z = ', num2str(minPoint(3))]);
