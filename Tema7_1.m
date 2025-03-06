% Definirea functiei f(x, y)
f = @(x, y) x.^2 - y.^2;

% Definirea pasului pentru calculul derivatelor
h = 1e-5;

% Calculul derivatelor de ordinul 2
% ∂²f/∂x²
d2f_dx2 = @(x, y) (f(x + h, y) - 2*f(x, y) + f(x - h, y)) / h^2;

% ∂²f/∂y²
d2f_dy2 = @(x, y) (f(x, y + h) - 2*f(x, y) + f(x, y - h)) / h^2;

% ∂²f/∂x∂y
d2f_dxdxy = @(x, y) (f(x + h, y + h) - f(x - h, y + h) - f(x + h, y - h) + f(x - h, y - h)) / (4 * h^2);

% Calcularea Hessianei
Hessian_f = [d2f_dx2(0, 0), d2f_dxdxy(0, 0); 
             d2f_dxdxy(0, 0), d2f_dy2(0, 0)];

disp('Matricea Hessiana la x* = (0,0) este:');
disp(Hessian_f);
