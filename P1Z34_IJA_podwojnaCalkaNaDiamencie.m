function I = P1Z34_IJA_podwojnaCalkaNaDiamencie(f, n)
% Projekt 1, zadanie 34
% Igor Januszkiewicz 327357
%
% Funkcja oblicza przybliżoną wartość całki podwójnej funkcji f na obszarze
% D = {(u, v): |u| + |v| <= 1}. W tym celu wykorzystana jest transformacja
% na kwadrat [-1, 1] x [-1, 1] przy użyciu zamiany zmiennych:
% u = (x - y)/2, v = (x + y)/2. Jakobian teko przekształcenia wynosi 1/2.
% Następnie zastosowana jest złożona, 2-punktowa kwadratura 
% Gaussa-Legendre'a ze względu na każdą zmienną.
% Dane wejściowe:
%   f - Uchwyt do funkcji całkowanej 2 zmiennych. Musi wykonywać operacje
%       na wektorach
%   n - Ilość podprzedziałów, na których bedzie stosowana kwadratura.
%       Domyślnie przyjmuje wartość 2000.
% Dane wyjściowe:
%   I - Przybliżona wartość całki.

if nargin < 2
    n = 2000;
end

% przekształcenie na kwadrat
fkw = toSquare(f);

% tworzenie wektora węzłów złożonej kwadratury
x = getNodes(n);

% obliczenie wszystkich wartości funkcji
valMat = fkw(x, x')/(2*n*n);

% sumujemy wszystkie wartości z wagami równymi 1
I = sum(sum(valMat));

end % function
