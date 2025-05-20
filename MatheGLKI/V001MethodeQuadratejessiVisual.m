%Nach Vorlesung 1

%Code von Jessi
%Visualisierung Methode der kleinsten Quadrate linearer Fall
x = [6, 9, 11, 13, 22, 26, 28, 33, 35]';
y = [68, 67, 65, 53, 44, 40, 37, 34, 32]';
A = [x, ones(length(x), 1)];
coeff = A \ y; % Koeffizienten a und b
a = coeff(1);
b = coeff(2);
fprintf('Die Modellfunktion ist: y = %.2f * x + %.2f\\n', a, b);
figure;
scatter(x, y, 'ro', 'filled'); 
hold on;
x_fit = linspace(min(x), max(x), 100);
y_fit = a * x_fit + b;
plot(x_fit, y_fit, 'b-', 'LineWidth', 2); 
xlabel('x-Werte');
ylabel('y-Werte');
title('Lineare Regression');
legend('Datenpunkte', 'Regressionsgerade', 'Location', 'Best');
grid on;
hold off;