function [FONC_check, SONC_check] = verificare_conditii_finite(x_star)
    % Definirea functiei f(x, y) = x^2 - y^2
    f = @(x, y) x.^2 - y.^2;

    % Derivatele de ordinul 1 folosind diferente finite
    df_dx = @(x, y) (f(x + 1e-5, y) - f(x - 1e-5, y)) / (2 * 1e-5);   % Derivata parțială față de x
    df_dy = @(x, y) (f(x, y + 1e-5) - f(x, y - 1e-5)) / (2 * 1e-5);  % Derivata parțială față de y

    % Calcularea gradientului în punctul x_star
    grad_f_at_x_star = [df_dx(x_star(1), x_star(2)), df_dy(x_star(1), x_star(2))];

    % Verificarea conditiei FONC
    if all(grad_f_at_x_star == [0, 0])
        FONC_check = 'Conditia FONC este indeplinita.';
    else
        FONC_check = 'Conditia FONC nu este indeplinita.';
    end

    % Derivatele de ordinul 2 folosind diferente finite
    d2f_dx2 = @(x, y) (f(x + 1e-5, y) - 2*f(x, y) + f(x - 1e-5, y)) / (1e-5)^2;  % ∂²f/∂x²
    d2f_dy2 = @(x, y) (f(x, y + 1e-5) - 2*f(x, y) + f(x, y - 1e-5)) / (1e-5)^2;  % ∂²f/∂y²
    d2f_dxdxy = @(x, y) (f(x + 1e-5, y + 1e-5) - f(x - 1e-5, y + 1e-5) - f(x + 1e-5, y - 1e-5) + f(x - 1e-5, y - 1e-5)) / (4 * (1e-5)^2); % ∂²f/∂x∂y

    % Calcularea Hessianei
    Hessian_f = [d2f_dx2(x_star(1), x_star(2)), d2f_dxdxy(x_star(1), x_star(2)); 
                 d2f_dxdxy(x_star(1), x_star(2)), d2f_dy2(x_star(1), x_star(2))];

    % Calcularea valorilor proprii ale Hessianei
    eigenvalues = eig(Hessian_f);

    % Verificarea conditiei SONC
    if all(eigenvalues > 0)
        SONC_check = 'Conditia SONC este indeplinita (punct de minim local).';
    else
        SONC_check = 'Conditia SONC nu este indeplinita (nu este minim local).';
    end

    % Reprezentare grafica
    [X, Y] = meshgrid(-2:0.1:2, -2:0.1:2);  % Crearea unei grile de puncte pentru X si Y
    Z = X.^2 - Y.^2;  % Functia f(x, y) = x^2 - y^2
    figure;  % Crearea unei noi feronțe
    surf(X, Y, Z);  % Reprezentare 3D a functiei f
    hold on;
    plot3(x_star(1), x_star(2), f(x_star(1), x_star(2)), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');  % Marcare punctului x*
    title('Reprezentarea grafica a functiei f(x, y) = x^2 - y^2');
    xlabel('x');
    ylabel('y');
    zlabel('f(x, y)');
    hold off;  % Eliberare grafica
end
