function [] = test7HiegherPoly()
% Projekt 1, zadanie 34
% Igor Januszkiewicz 327357
%
% Sprawdzenie dokładności kwadratury dla całek z wielomianów stopnia
% większego niż 3

disp("Funkcja sprawdza poprawność całkowania wielomianów stopnia")
disp("conajmniej 4")
disp("2 - punktowa kwadratura Gaussa-Legende'a ze względu na każdą")
disp("zmienną ma rząd 4 ze względu na każdą zmienną. A więc te całki nie")
disp("powinny być dokładne")
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

    f = @(x, y) 2*(x.^4 + 6*x.^2.*y.^2 + y.^4);
    showResult("2(x^4 + 6x^2y^2 + y^4)", "u^4 + v^4", f, "4/5", n);
    
    f = @(x, y) 2*(y.*y - x.*x).^4 - (x + y).^3.*(x - y) + 1;
    showResult("2(y^2 - x^2)^4 - (x + y)^3(x - y) + 1", ...
        "u^4v^4 + u^3v - 1", f, "54/25", n);

    f = @(x, y) x.^2.*y.^3 + 12*x.^6.*y.^4;
    showResult("x^2y^4 + 12x^6y^4", ...
        "((u - v)/2)^2((u + v)/2)^4 + 12((u - v)/2)^6((u + v)/2)^4", ...
        f, "1/77", n);

end

end % function
