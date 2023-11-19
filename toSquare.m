function [fsq] = toSquare(f)
% Projekt 1, zadanie 34
% Igor Januszkiewicz 327357
%
% Funkcja przeprowadza transformacje funkcji f z diamentu 
% ({(u, v): |u| + |v| <= 1}) na kwadrat ([-1, 1] x [-1, 1]) w celu 
% obliczenia całki.
% Dane wejściowe:
%   f   - Uchwyt do funkcji całkowanej 2 zmiennych.
% Dane wyjściowe:
%   fsq - uchwyt do funkcji po transformacji

fsq = @(u, v) f((u - v)/2, (u + v)/2);

end % function