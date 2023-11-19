function [] = test5Quadratic()
% Projekt 1, zadanie 34
% Igor Januszkiewicz 327357
%
% Sprawdzenie czy kwadratura jest dokładna dla funkcji kwadratowych

disp("Funkcja sprawdza poprawność całkowania funkcji kwadratowych")
disp("2 - punktowa kwadratura Gaussa-Legende'a ze względu na każdą")
disp("zmienną jest dokładna dla funkcji kwadratowych ze względu na każdą")
disp("zmienną. A więc testujemy funkcje które po zmianie zmiennych będą")
disp("miały wykładnik przy każdeh zmiennej conajwyżej 2.")
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

    f = @(x, y) x.*y;
    showResult("xy", "(u^2 - v^2)/4", f, "0", n);
    
    f = @(x, y) (y.^2 - x.^2).^2 - 2*(x + y).*((y - x).^2) - 3;
    showResult("(y^2 - x^2)^2 - 2(x + y)(y - x)^2 - 3", ...
        "(u^2)(v^2) - 2uv^2 - 3", f, "-52/9", n);

    f = @(x, y) (x - y).*(y + 3*x);
    showResult("(x - y)(y + 3x)", "v(v - 2u)", f, "2/3", n);

end

end % function
