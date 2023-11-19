function [] = test3Const()
% Projekt 1, zadanie 34
% Igor Januszkiewicz 327357
%
% Sprawdzenie czy kwadratura jest dokładna dla funkcji stałych

disp("Funkcja sprawdza poprawność całkowania funkcji stałych.")
disp("Pole diamentu {(u, v): |u| + |v| <= 1} wynosi 2 a więc całka")
disp("podwojna z funkcji stałej na tym obszarze powinna wynosić 2*c.")
disp("2 - punktowa kwadratura Gaussa-Legende'a jest dokładna dla")
disp("wielomainów o stopniu maksymalnie 3 więc w szczególności powinna")
disp("być dokładnia dla funkcji stałych")
fprintf("\nznakiem S oznaczona jest wartość całki przy pomocy funkcji" +...
    " głownej\ndiff to |S - 2*c|\n\n")

for n = [1 100 2000]
    fprintf("wscisnij dowoly przycisk aby wyświetlić wyniki dla n=%d\n", n)
    pause;
    fprintf("\nn=%d\n", n)
    for c = -5:1:5
        f = @(x, y) c*ones(length(x),length(y));
        S = P1Z34_IJA_podwojnaCalkaNaDiamencie(f,n);
        fprintf("c=%4d, 2*c=%3d, S=%10f diff=%e \n", c, 2*c, S,...
            abs(S - 2*c));
    end
end

end % function
