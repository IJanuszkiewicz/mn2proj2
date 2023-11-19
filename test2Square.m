function [] = test2Square()
% Projekt 1, zadanie 34
% Igor Januszkiewicz 327357

disp( ...
  "Sprawdzenie czy funkcja po transformacji oblicza wartości w diamencie.")
disp("f(x,y) = [x, y]")
disp("fsq(x,y) = f((x - y)/2, (x + y)/2) obliczone przez toSquare")
disp("x - węzły dostarczone przez getNodes")
f = @(x,y) [x, y];
fsq = toSquare(f);
x = getNodes(20);

x = fsq(x, x');

x1 = reshape(x(:,1:length(x)/2), 1, []);
y = reshape(x(:,length(x)/2 + 1:end), 1, []);

disp("Graf wszystkich punktów których bedzie obliczana wartość f w " + ...
    "funkcji głownej (dla n = 20)")
input("naciśnij enter aby wyświetlić:");
plot(x1, y, ".");
    
end % function
