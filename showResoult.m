function [] = showResoult(fStr, fkwStr, f, E, n)

fprintf("f(x, y) = %s, fkw(u, v) = %s\n", fStr, fkwStr);
S = P1Z34_IJA_podwojnaCalkaNaDiamencie(f, n);
fprintf("E(f)=%s, S(f)=%7f, diff=%e\n\n", E, S, abs(str2num(E) - S));

end % function