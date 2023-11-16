f = @(x,y) cos(x.*y);

podwojnaCalkaNaDiamencie(f);

f = @(x,y) x + y + x*x + 2*y*x;

podwojnaCalkaNaDiamencie(f);

f = @(x,y)exp(x - y);
podwojnaCalkaNaDiamencie(f);

if nargin < 2
    n = 2000;
end

nodes = [-0.57735026918962576451 0.57735026918962576451];
fkw = @(u, v) f((u - v)/2, (u + v)/2)/2;

x = (1/n):(2/n):(2*n-1)/n;
x = [x + nodes(1)/n - 1; x + nodes(2)/n - 1];
x = reshape(x, length(x)*2, 1);
x = repmat(x, 1, length(x));

valMat = fkw(x,x')/(n*n);

I = sum(sum(valMat));
