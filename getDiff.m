function [diffs] = getDiff(f, exact, nVec)
% Projekt 1, zadanie 34
% Igor Januszkiewicz 327357
%

diffs = nVec;
for i = 1:length(nVec)
    diffs(i) = abs(P1Z34_IJA_podwojnaCalkaNaDiamencie(f,nVec(i)) - exact);
end

end % function
