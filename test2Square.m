function [] = test2Square()
% Projekt 1, zadanie 34
% Igor Januszkiewicz 327357
%
% Sprawdzenie przekształcenie jest poprawne

disp( ...
  "Sprawdzenie czy funkcja po transformacji oblicza wartości w diamencie.")

f = @(x,y) [x, y];
fsq = toSquare(f);
nodes = getNodes(20);

transformedNodes = nodes;
transformedNodes = fsq(transformedNodes, transformedNodes');

x = reshape(transformedNodes(:,1:length(transformedNodes)/2), 1, []);
y = reshape(transformedNodes(:,length(transformedNodes)/2 + 1:end), 1, []);

nodes = [repmat(nodes, 1, length(nodes)), ...
    repmat(nodes', length(nodes), 1)];

disp("Graf węzłów przed i po transformacji ")
disp("funkcji głownej (dla n = 20)")
disp("naciśnij dowolny przycisk aby wyświetlić:")
pause;
subplot(1,2,2);
plot(x, y, ".");
axis equal;
title("Transformed Nodes")
subplot(1,2,1);
x = reshape(nodes(:,1:length(nodes)/2), 1, []);
y = reshape(nodes(:,length(nodes)/2 + 1:end), 1, []);
plot(x, y, ".");
axis equal;
title("Nodes Before Transfomation")

end % function
