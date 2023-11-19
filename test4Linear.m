function [] = test4Linear()
% Projekt 1, zadanie 34
% Igor Januszkiewicz 327357
%
% Sprawdzenie czy kwadratura jest dokładna dla funkcji liniowych

disp("Funkcja sprawdza poprawność całkowania funkcji liniowych")
disp("2 - punktowa kwadratura Gaussa-Legende'a ze względu na każdą")
disp("zmienną jest dokładna dla funkcji liniowych ze względu na każdą")
disp("zmienną. A więc testujemy funkcje które po zmianie zmiennych będą")
disp("miały wykładnik przy każdeh zmiennej conajwyżej 1.")
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

    f = @(x, y) x + y;
    showResult("x + y", "u", f, "0", n);
    
    f = @(x, y) y - x;
    showResult("y - x", "v", f, "0", n);

    f = @(x, y) x/2 + 2*y - 1;
    showResult("x/2 + 2y - 1", "(5u + 3v)/4 - 1", f, "-2", n);
    
    f = @(x, y) y.*y - x.*x + x + 1;
    showResult("y^2 - x^2 + x + 1", "uv + (u - v)/2 + 1", f, "2", n);

end

end % function
