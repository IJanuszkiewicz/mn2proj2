function [] = numtest2Time()
% Projekt 1, zadanie 34
% Igor Januszkiewicz 327357
%
% Funckja mierzy czas wykonywania obliczania kwadratury.

functions = {@(x, y) 2*(x.^4 + 6*x.^2.*y.^2 + y.^4), ...
            @(x, y) cos(pi*x + 0*y),...
            @(x, y) 2*(y.*y - x.*x).^4 - (x + y).^3.*(x - y) + 1,...
            @(x ,y) exp(x) + 0*y};

% exacts = [4/5, 8/(pi*pi), 54/25, (4*(exp(1)-1)^2)/2/exp(1)];

names = ["2*(x^4 + 6x^2 y^2 + y^4)", "cos(pi*x)",...
    "2(y^2 - x^2 )^4 - (x + y)^3 (x - y) + 1", "exp(x)"];

ns = 1:10:1000;
times = ns;
for i = 1:length(names)
    j = 1;
    for n = ns
        tic;
        P1Z34_IJA_podwojnaCalkaNaDiamencie(functions{i}, n);
        t = toc;
        times(j) = t;
        j = j + 1;
    end
    loglog(ns, times);
    hold on;
end

hold off;
legend(names);

end % function
