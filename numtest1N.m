function [] = numtest1N()

funtions = {@(x, y) 2*(x.^4 + 6*x.^2.*y.^2 + y.^4), ...
            @(x, y) cos(pi*x + 0*y),...
            @(x, y) 2*(y.*y - x.*x).^4 - (x + y).^3.*(x - y) + 1};

exacts = [4/5, 8/(pi*pi), 54/25];

names = ["2*(x^4 + 6x^2 y^2 + y^4)", "cos(pi*x)",...
    "2(y^2 - x^2 )^4 - (x + y)^3 (x - y) + 1"];

n = double(int32(logspace(0, 3, 30)));
nlog = log(double(n'));
coeffs = exacts;
for i = 1:length(exacts)
    diffs = getDiff(funtions{i}, exacts(i), n);
    loglog(n, diffs);
    coeffs(i) = nlog\log(diffs');
    hold on;
end

title("Błąd metody numerycznej w zaleznosci od ilości podprzedziałów")
xlabel("n");
ylabel("błąd");
legend(names);

coeffs

end % funtion