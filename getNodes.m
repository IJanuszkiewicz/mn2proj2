function x = getNodes(n)
% Projekt 1, zadanie 34
% Igor Januszkiewicz 327357
%
% Funkcja przygotowuje węzły do złożonej 2-punktowej kwadratury
% Gaussa-Legendre'a
% Dane wejściowe:
%   n - Ilość podprzedzałów.
% Dane wyjsciowe:
%   x - Wektor węzłów. Uporządkowane rosnąco.

% zadeklarowanie węzłów kwadratury Gaussa-Legendre'a na przedziale [-1, 1]
nodes = [-0.57735026918962576451 0.57735026918962576451];

x = (1/n):(2/n):(2*n - 1)/n;
x = [x + nodes(1)/n - 1; x + nodes(2)/n - 1];
x = reshape(x, [], 1);

end % function
