function [] = test6Cubic()
% Projekt 1, zadanie 34
% Igor Januszkiewicz 327357
%
% Sprawdzenie czy kwadratura jest poprawna dla funkcji sześciennych

disp("Funkcja sprawdza poprawność całkowania funkcji sześciennych")
disp("2 - punktowa kwadratura Gaussa-Legende'a ze względu na każdą")
disp("zmienną jest dokładna dla funkcji sześciennych ze względu na każdą")
disp("zmienną. A więc testujemy funkcje które po zmianie zmiennych będą")
disp("miały wykładnik przy każdej zmiennej conajwyżej 3.")
disp("")
disp("f    - funkcja z której bedziemy obliczać całkę")
disp("fkw  - funkcja po przekształceniu fkw(x,y) = f((x - y)/2,(x + y)/2)")
disp("E(f) - dokładna wartoś całki na diamencie z funkcji f")
disp("S(f) - przybliżona wartoś całki na diamencie z funkcji f")
disp("diff - |E(f) - S(f)|")

for n = [1,100,2000]
    fprintf("\nwciśnij dowoly przycisk aby zobaczyc wyniki dla n=%d\n", n);
    pause;
    fprintf("n=%d\n", n);

    f = @(x, y) x.*x.*x + y.*y.*y;
    showResult("x^3 + y^3", "(u^2 + 3v^2)u/4", f, "0", n);
    
    f = @(x, y)(x + y).^2.*(y - x).^3.*(x + y + 1) - 1 ;
    showResult("(x + y)^2(y - x)^3(x + y + 1) - 1", ...
        "u^3v^3 + u^2v^3 - 1", f, "-2", n);

    f = @(x, y) -x.^6 + 3*x.^4.*y.^2 - 3*x.^2.*y.^4 + y.^6 - 10;
    showResult("-x^6 + 3x^4y^2 - 3x^2y^4 + y^6 - 10", ...
        "u^3 + v^3", f, "-20", n);

end

end % function
