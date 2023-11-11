function I = podwojnaCalkaNaDiamencie(f, n)
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
% f - funkcja całkowana 2 zmiennych. Musi przyjmować 2 wektory równej
% długości i zwracać liczbę.
% n - ilość podprzedziałów, na których bedzie stosowana kwadratura.
% Dane wyjściowe:
% I - przybliżona wartość całki.

end % function
