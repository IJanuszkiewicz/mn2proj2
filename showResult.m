function [] = showResult(fStr, fkwStr, f, E, n)
% Projekt 1, zadanie 34
% Igor Januszkiewicz 327357
%
% Funkcja wyświetla dokładną wartość całki, obliczoną przez program główny
% i różnicę.

fprintf("f(x, y) = %s\nfkw(u, v) = %s\n", fStr, fkwStr);
S = P1Z34_IJA_podwojnaCalkaNaDiamencie(f, n);
fprintf("E(f)=%s, S(f)=%7f, diff=%e\n\n", E, S,...
    abs(str2num(E) - S)); %#ok<ST2NM> 
% tutaj MATLAB proponuje zamianę funkcji str2num na str2double dla
% przyspieszenia ale to powoduje niepoprawne działanie funkcji więc
% musiałem zablokować to ostrzerzenie

end % function
