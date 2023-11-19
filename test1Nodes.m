function [] = test1Nodes()

wielLegendra = @(x)(3*x.*x - 1)/2;
x = getNodes(1);

disp("Sprawdzanie czy węzły są poprawne\n")
disp("węzły powinny być pierwiastkami drugiego wielomainu Legendre'a:\n")
disp("P_2(x) = (3x^2 - 1)/2\n")
fprintf("\nwęzeł 1: n1 = %.20f\n", x(1))
fprintf("węzeł 2: n2 = %.20f\n\n", x(2))

fprintf("P_2(n1) = %e\n", wielLegendra(x(1)))
fprintf("P_2(n2) = %e\n", wielLegendra(x(2)))

end