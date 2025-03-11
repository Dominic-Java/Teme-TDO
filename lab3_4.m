
//ex 1

% Definirea valorilor aproximative si exacte
a = [3.14, 999996, 0.000009, 1.00345]; % valorile aproximative
x = [3.141592, 1000000, 0.000012, 1.000145]; % valorile exacte

% Calcularea erorilor absolute
errAbs = abs(a - x);  % Eroarea absoluta

% Calcularea erorilor relative
errRel = errAbs ./ abs(x);  % Eroarea relativa

% Afisarea rezultatelor
for i = 1:length(a)
    fprintf('Pentru a%d = %.5f, eroarea absoluta este: %.8f si eroarea relativa este: %.8f\n', i, a(i), errAbs(i), errRel(i));
    
    % Determinarea tipului de aproximare
    if a(i) < x(i)
        fprintf('Aproximarea se face prin lipsa.\n\n');
    elseif a(i) > x(i)
        fprintf('Aproximarea se face prin adaos.\n\n');
    else
        fprintf('Aproximarea este exacta.\n\n');
    end
end

// ex 2
% Script pentru calcularea erorii absolute si determinarea tipului de aproximare

% Citirea valorilor de la tastatura
a = input('Introduceti valoarea aproximativa a: ');
x = input('Introduceti valoarea exacta x: ');

% Calcularea erorii absolute
errAbs = abs(x - a);

% Determinarea tipului de aproximare (lipsa sau adaos)
if a < x
    disp('A aproximat prin lipsa.')
elseif a > x
    disp('A aproximat prin adaos.')
else
    disp('Aproximarea este exacta.')
end

% Afisarea erorii absolute
disp(['Eroarea absoluta este: ', num2str(errAbs)]);



function [errAbs, errRel] = ex2_B(a, x)
    % Verifica daca numarul de argumente de intrare este corect
    if nargin ~= 2
        error('Numar incorect de argumente de intrare. Trebuie sa oferiti doua argumente.');
    end

    % Verifica daca numarul de argumente de iesire este corect
    if nargout ~= 2
        error('Numar incorect de argumente de iesire. Functia returneaza doua valori.');
    end

    % Verifica daca vectorii a si x au aceeasi dimensiune
    if length(a) ~= length(x)
        error('Vectorii a si x trebuie sa aiba aceeasi dimensiune.');
    end

    % Calcularea erorii absolute
    errAbs = abs(x - a);
    
    % Calcularea erorii relative
    errRel = errAbs / abs(x);
end
% Script pentru apelul functiei ex2_B si compararea erorilor

% Citirea valorilor de la tastatura
a = input('Introduceti valoarea aproximativa a: ');
x = input('Introduceti valoarea exacta x: ');

% Apelarea functiei pentru calcularea erorilor
[errAbs, errRel] = ex2_B(a, x);

% Afisarea erorilor
disp(['Eroarea absoluta este: ', num2str(errAbs)]);
disp(['Eroarea relativa este: ', num2str(errRel)]);

% Compararea erorilor
if errAbs < errRel
    disp('Masuratoarea absoluta este mai buna.');
else
    disp('Masuratoarea relativa este mai buna.');
end



// ex3

% Valoarea exactă
a = 100; % cm

% Eroarea absolută
delta_a = 2; % cm

% Valori posibile pentru lungimea măsurată
x1 = a + delta_a;
x2 = a - delta_a;

disp(['Valorile posibile pentru lungimea măsurată sunt: ', num2str(x1), ' cm și ', num2str(x2), ' cm']);






//ex 4

% Valoarea exactă a lui e
e_exact = 2.71828182845;

% Aproximări pentru e
a1_e = 2.718; % prin lipsă
a2_e = 2.719; % prin adaos

% Calculul erorii absolute pentru fiecare aproximare
delta_a1_e = abs(e_exact - a1_e);
delta_a2_e = abs(e_exact - a2_e);

disp(['Eroarea absolută pentru a1 (prin lipsă) la e: ', num2str(delta_a1_e)]);
disp(['Eroarea absolută pentru a2 (prin adaos) la e: ', num2str(delta_a2_e)]);



//ex 5


% Definirea numerelor
x1 = 8.987658;
x2 = 8.987312;
x3 = 8.987512;
x4 = 8.9875;
x5 = 8.9865;
x6 = 8.9895;

% Rotunjirea numerelor la 3 zecimale folosind regula cifrei pare
x1_rounded = round(x1, 3);
x2_rounded = round(x2, 3);
x3_rounded = round(x3, 3);
x4_rounded = round(x4, 3);
x5_rounded = round(x5, 3);
x6_rounded = round(x6, 3);

% Afișarea rezultatelor
disp(['x1 rotunjit: ', num2str(x1_rounded)]);
disp(['x2 rotunjit: ', num2str(x2_rounded)]);
disp(['x3 rotunjit: ', num2str(x3_rounded)]);
disp(['x4 rotunjit: ', num2str(x4_rounded)]);
disp(['x5 rotunjit: ', num2str(x5_rounded)]);
disp(['x6 rotunjit: ', num2str(x6_rounded)]);



//ex 6
% Definirea numerelor
x1 = 2.416752;
x2 = 6.216253;
x3 = 3.454650;

% Rotunjirea numerelor la 2, 3, 4 și 5 zecimale folosind regula cifrei pare
x1_2dec = round(x1, 2);
x1_3dec = round(x1, 3);
x1_4dec = round(x1, 4);
x1_5dec = round(x1, 5);

x2_2dec = round(x2, 2);
x2_3dec = round(x2, 3);
x2_4dec = round(x2, 4);
x2_5dec = round(x2, 5);

x3_2dec = round(x3, 2);
x3_3dec = round(x3, 3);
x3_4dec = round(x3, 4);
x3_5dec = round(x3, 5);

% Afișarea rezultatelor
disp(['x1 rotunjit la 2 zecimale: ', num2str(x1_2dec)]);
disp(['x1 rotunjit la 3 zecimale: ', num2str(x1_3dec)]);
disp(['x1 rotunjit la 4 zecimale: ', num2str(x1_4dec)]);
disp(['x1 rotunjit la 5 zecimale: ', num2str(x1_5dec)]);

disp(['x2 rotunjit la 2 zecimale: ', num2str(x2_2dec)]);
disp(['x2 rotunjit la 3 zecimale: ', num2str(x2_3dec)]);
disp(['x2 rotunjit la 4 zecimale: ', num2str(x2_4dec)]);
disp(['x2 rotunjit la 5 zecimale: ', num2str(x2_5dec)]);

disp(['x3 rotunjit la 2 zecimale: ', num2str(x3_2dec)]);
disp(['x3 rotunjit la 3 zecimale: ', num2str(x3_3dec)]);
disp(['x3 rotunjit la 4 zecimale: ', num2str(x3_4dec)]);
disp(['x3 rotunjit la 5 zecimale: ', num2str(x3_5dec)]);


//ex 7
% Definirea numerelor
x1 = 2.456750;
x2 = 2.42629;
x3 = 2.456752;
x4 = 2.416512;
x5 = 2.45350;

% Rotunjirea numerelor la 3 zecimale folosind regula cifrei pare
x1_rounded = round(x1, 3);
x2_rounded = round(x2, 3);
x3_rounded = round(x3, 3);
x4_rounded = round(x4, 3);
x5_rounded = round(x5, 3);

% Afișarea rezultatelor
disp(['x1 rotunjit la 3 zecimale: ', num2str(x1_rounded)]);
disp(['x2 rotunjit la 3 zecimale: ', num2str(x2_rounded)]);
disp(['x3 rotunjit la 3 zecimale: ', num2str(x3_rounded)]);
disp(['x4 rotunjit la 3 zecimale: ', num2str(x4_rounded)]);
disp(['x5 rotunjit la 3 zecimale: ', num2str(x5_rounded)]);



//ex8 
% Definirea numerelor
a1 = 500;
a2 = 499.992;
a3 = 500.02;
a4 = 499.979;
a5 = 499.989;

% Rotunjirea numerelor la 3 zecimale folosind regula cifrei pare
a1_rounded = round(a1, 3);
a2_rounded = round(a2, 3);
a3_rounded = round(a3, 3);
a4_rounded = round(a4, 3);
a5_rounded = round(a5, 3);

% Afișarea rezultatelor
disp(['a1 rotunjit la 3 zecimale: ', num2str(a1_rounded)]);
disp(['a2 rotunjit la 3 zecimale: ', num2str(a2_rounded)]);
disp(['a3 rotunjit la 3 zecimale: ', num2str(a3_rounded)]);
disp(['a4 rotunjit la 3 zecimale: ', num2str(a4_rounded)]);
disp(['a5 rotunjit la 3 zecimale: ', num2str(a5_rounded)]);


//ex9
% Definirea numerelor
n1 = 502.364;
n2 = 0.00300551;
n3 = 1235.7;
n4 = 0.0235;

% Rotunjirea numerelor la 4 cifre semnificative folosind regula cifrei pare
n1_rounded = round(n1, 4 - floor(log10(abs(n1))));
n2_rounded = round(n2, 4 - floor(log10(abs(n2))));
n3_rounded = round(n3, 4 - floor(log10(abs(n3))));
n4_rounded = round(n4, 4 - floor(log10(abs(n4))));

% Afișarea rezultatelor
disp(['n1 rotunjit la 4 cifre semnificative: ', num2str(n1_rounded)]);
disp(['n2 rotunjit la 4 cifre semnificative: ', num2str(n2_rounded)]);
disp(['n3 rotunjit la 4 cifre semnificative: ', num2str(n3_rounded)]);
disp(['n4 rotunjit la 4 cifre semnificative: ', num2str(n4_rounded)]);


// ex 10


% Definirea numerelor
x = 499.987;
a1 = 500;
a2 = 499.992;
a3 = 500.02;
a4 = 499.979;
a5 = 499.989;

% Funcție pentru determinarea numărului de cifre semnificative
function sig_digits = numSigDigits(num)
    num_str = num2str(num); % Convertim numărul într-un string
    % Eliminăm zero-urile de la începutul numărului (dacă există)
    num_str = strrep(num_str, '0', ''); 
    
    % Verificăm numărul de cifre semnificative
    sig_digits = length(num_str) - sum(num_str == '0'); 
end

% Apelăm funcția pentru fiecare număr
sig_digits_a1 = numSigDigits(a1);
sig_digits_a2 = numSigDigits(a2);
sig_digits_a3 = numSigDigits(a3);
sig_digits_a4 = numSigDigits(a4);
sig_digits_a5 = numSigDigits(a5);

% Afișăm rezultatele
disp(['a1 = ', num2str(a1), ' are ', num2str(sig_digits_a1), ' cifre semnificative.']);
disp(['a2 = ', num2str(a2), ' are ', num2str(sig_digits_a2), ' cifre semnificative.']);
disp(['a3 = ', num2str(a3), ' are ', num2str(sig_digits_a3), ' cifre semnificative.']);
disp(['a4 = ', num2str(a4), ' are ', num2str(sig_digits_a4), ' cifre semnificative.']);
disp(['a5 = ', num2str(a5), ' are ', num2str(sig_digits_a5), ' cifre semnificative.']);


// ex 11
% Căutăm cifrele distincte și așezate crescător
cifre = 0:9; % Cifrele posibile

% Inițializăm variabilele pentru cel mai mic și cel mai mare număr par
min_numar = inf; % Initializare la o valoare mare
max_numar = -inf; % Initializare la o valoare mică

% Iterăm prin toate combinațiile de două cifre distincte
for i = 1:length(cifre)
    for j = i+1:length(cifre)
        % Combinăm cifrele i și j
        numar1 = 10 * cifre(i) + cifre(j); % Cifrele în ordine crescătoare
        numar2 = 10 * cifre(j) + cifre(i); % Cifrele în ordine descrescătoare

        % Verificăm dacă numărul este par
        if mod(numar1, 2) == 0
            min_numar = min(min_numar, numar1);
            max_numar = max(max_numar, numar1);
        end
        if mod(numar2, 2) == 0
            min_numar = min(min_numar, numar2);
            max_numar = max(max_numar, numar2);
        end
    end
end

% Afișăm rezultatele
disp(['Cel mai mic numar par: ', num2str(min_numar)]);
disp(['Cel mai mare numar par: ', num2str(max_numar)]);


//ex12

% Definirea numerelor
x1 = 176;
x2 = 125;
x3 = 41;

% Funcție pentru conversia unui număr zecimal în virgulă flotantă
function [mantisa, exponent] = normalizare(x)
    % Conversia numărului în binar
    bin = dec2bin(x); % Conversia numărului în binar
    % Determinarea exponentului
    exponent = floor(log2(x)); % Exponentul este partea întreagă a logaritmului în baza 2 al numărului
    
    % Determinarea mantisei în formă normalizată
    mantisa = x / 2^exponent; % Calculăm mantisa
    
    % Afisăm rezultatele
    disp(['Numarul: ', num2str(x)]);
    disp(['Forma normalizata: ', num2str(mantisa), ' x 2^', num2str(exponent)]);
    disp(['Mantisa: ', num2str(mantisa)]);
    disp(['Exponentul: ', num2str(exponent)]);
    disp('------------------------------------');
end

% Apelăm funcția pentru fiecare număr
normalizare(x1);
normalizare(x2);
normalizare(x3);


// ex 13

% Definirea numerelor
x1 = 176;
x2 = 125;
x3 = 41;

% Funcție pentru conversia unui număr zecimal în virgulă flotantă
function normalizare(x)
    % Conversia numărului într-o formă binară normalizată
    exponent = floor(log2(x)); % Exponentul este partea întreagă a logaritmului în baza 2
    mantisa = x / 2^exponent; % Calculăm mantisa
    
    % Afișăm rezultatele
    disp(['Numarul: ', num2str(x)]);
    disp(['Forma normalizata: ', num2str(mantisa), ' x 2^', num2str(exponent)]);
    disp(['Mantisa: ', num2str(mantisa)]);
    disp(['Exponentul: ', num2str(exponent)]);
    disp('------------------------------------');
end

% Apelăm funcția pentru fiecare număr
normalizare(x1);
normalizare(x2);
normalizare(x3);


// ex 14
% Parametri
r = 2; % Raza (în metri)
pi_val = 3.14; % Valoarea lui pi
delta_V_max = 0.01; % Eroare maximă acceptată pentru volum

% Derivata volumului față de r
dV_dr = 4 * pi_val * r^2;

% Calcularea erorii absolute maxime pentru r
delta_r_max = delta_V_max / dV_dr;

disp(['Eroarea maximă absolută pentru r: ', num2str(delta_r_max), ' m']);

% Parametri
r = 5; % Raza (în cm)
delta_L_max = 0.02; % Eroare maximă acceptată pentru lungime

% Derivata lungimii față de r
dL_dr = 2 * pi_val;

% Calcularea erorii absolute maxime pentru r
delta_r_max = delta_L_max / dL_dr;

disp(['Eroarea maximă absolută pentru r: ', num2str(delta_r_max), ' cm']);

% Parametri
r = 3; % Raza (în cm)
delta_r = 0.01; % Eroare absolută a razei (în cm)
pi_val = 3.14; % Valoarea lui pi

% Derivata ariei față de r
dA_dr = 2 * pi_val * r;

% Eroarea absolută
delta_A = dA_dr * delta_r;

% Aria cercului
A = pi_val * r^2;

% Eroarea relativă
delta_A_rel = delta_A / A;

disp(['Eroarea absolută ΔA: ', num2str(delta_A), ' cm^2']);
disp(['Eroarea relativă δA: ', num2str(delta_A_rel)]);


% Parametri
r = 2; % Raza (în cm)
h = 2; % Înălțimea (în cm)
delta_r = 0.003; % Eroare absolută a razei
delta_h = 0.001; % Eroare absolută a înălțimii
pi_val = 3.14; % Valoarea lui pi

% Derivatele parțiale ale volumului
dV_dr = (2/3) * pi_val * r * h;
dV_dh = (1/3) * pi_val * r^2;

% Eroarea absolută
delta_V = dV_dr * delta_r + dV_dh * delta_h;

% Volumul conului
V = (1/3) * pi_val * r^2 * h;

% Eroarea relativă
delta_V_rel = delta_V / V;

disp(['Eroarea absolută ΔV: ', num2str(delta_V), ' cm^3']);
disp(['Eroarea relativă δV: ', num2str(delta_V_rel)]);
