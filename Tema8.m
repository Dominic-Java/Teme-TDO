function [FONC_check, SONC_check, SOSC_check] = verificare_conditii_finite(x_star)
    % Verifică dacă x_star are două componente
    if length(x_star) ~= 2
        error('Punctul x_star trebuie să aibă exact 2 componente.');
    end

    % Definirea functiei f(x, y) = x^2 - y^2
    f = @(x, y) x.^2 - y.^2;

    % Derivatele de ordinul 1 folosind diferențe finite
    df_dx = @(x, y) (f(x + 1e-5, y) - f(x - 1e-5, y)) / (2 * 1e-5);   % ∂f/∂x
    df_dy = @(x, y) (f(x, y + 1e-5) - f(x, y - 1e-5)) / (2 * 1e-5);   % ∂f/∂y

    % Calcularea gradientului în punctul x_star
    x1 = x_star(1);
    x2 = x_star(2);
    grad_f_at_x_star = [df_dx(x1, x2), df_dy(x1, x2)];

    % Verificarea FONC (gradientul trebuie să fie zero)
    if all(abs(grad_f_at_x_star) < 1e-5)  % Folosim o toleranță numerică
        FONC_check = 'Conditia FONC este indeplinita.';
    else
        FONC_check = 'Conditia FONC nu este indeplinita.';
    end

    % Derivatele de ordinul 2 folosind diferențe finite
    d2f_dx2 = @(x, y) (f(x + 1e-5, y) - 2*f(x, y) + f(x - 1e-5, y)) / (1e-5)^2;  % ∂²f/∂x²
    d2f_dy2 = @(x, y) (f(x, y + 1e-5) - 2*f(x, y) + f(x, y - 1e-5)) / (1e-5)^2;  % ∂²f/∂y²
    d2f_dxdy = @(x, y) (f(x + 1e-5, y + 1e-5) - f(x - 1e-5, y + 1e-5) ...
                       - f(x + 1e-5, y - 1e-5) + f(x - 1e-5, y - 1e-5)) / (4 * (1e-5)^2); % ∂²f/∂x∂y

    % Calcularea matricei Hessiane
    Hessian_f = [d2f_dx2(x1, x2), d2f_dxdy(x1, x2); 
                 d2f_dxdy(x1, x2), d2f_dy2(x1, x2)];

    % Calcularea valorilor proprii ale Hessianei
    eigenvalues = eig(Hessian_f);

    % Verificarea SONC (Hessiana trebuie să fie semidefinit pozitivă)
    if all(eigenvalues >= 0)
        SONC_check = 'Conditia SONC este indeplinita (posibil minim local).';
    else
        SONC_check = 'Conditia SONC nu este indeplinita (nu este minim local).';
    end

    % Verificarea SOSC (Hessiana trebuie să fie definit pozitivă)
    if all(eigenvalues > 0)
        SOSC_check = 'Conditia SOSC este indeplinita (punct de minim strict).';
    else
        SOSC_check = 'Conditia SOSC nu este indeplinita (nu este minim strict).';
    end

    % Reprezentare grafică
    figure;
    [X, Y] = meshgrid(-2:0.1:2, -2:0.1:2);  % Crearea unei grile de puncte
    Z = f(X, Y);  % Evaluarea funcției f pe această grilă
    
    surf(X, Y, Z);  % Reprezentare 3D a funcției
    hold on;
    plot3(x1, x2, f(x1, x2), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');  
    title('Reprezentarea grafica a functiei f(x, y) = x^2 - y^2');
    xlabel('x');
    ylabel('y');
    zlabel('f(x, y)');
    hold off;
end
