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
%   f - Uchwyt do funkcji całkowanej 2 zmiennych. Musi przyjmować 2
%       macierze o jednakowych wymiarach i zwracać macierz z wartościami.
%   n - Ilość podprzedziałów, na których bedzie stosowana kwadratura.
%       Domyślnie przyjmuje wartość 2000.
% Dane wyjściowe:
%   I - Przybliżona wartość całki.

if nargin < 2
    n = 2000;
end

nodes = [-0.57735026918962576451 0.57735026918962576451];
fkw = @(u, v) f((u - v)/2, (u + v)/2)/2;

x = (1/n):(2/n):(2*n - 1)/n;
x = [x + nodes(1)/n - 1; x + nodes(2)/n - 1];
x = reshape(x, [], 1);
x = repmat(x, 1, length(x));
plot((x-x')/2,(x+x')/2,".")

valMat = fkw(x, x')/(n*n);

I = sum(sum(valMat));

end % function
