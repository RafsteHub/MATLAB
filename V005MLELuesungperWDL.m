%Nach Vorlesung 5

%deepseek

%% Einstellungen
mu = 0;         % Mittelwert
sigma = 1;      % Standardabweichung
x = linspace(-4, 4, 1000);  % x-Wertebereich

%% Dichtefunktion berechnen
f = @(x) (1/(sqrt(2*pi)*sigma)) * exp(-(x-mu).^2/(2*sigma^2));
y = f(x);

%% Wahrscheinlichkeiten berechnen (68-95-99.7 Regel)
P_1sigma = integral(f, -1*sigma, 1*sigma);  % ≈ 0.6827
P_2sigma = integral(f, -2*sigma, 2*sigma);  % ≈ 0.9545
P_3sigma = integral(f, -3*sigma, 3*sigma);  % ≈ 0.9973

%% Grafik erstellen
figure;
hold on;
grid on;

% Glockenkurve plotten
plot(x, y, 'b-', 'LineWidth', 2);

% Flächen unter der Kurve füllen
x_fill_1 = linspace(-1, 1, 100);
y_fill_1 = f(x_fill_1);
fill([x_fill_1, fliplr(x_fill_1)], [y_fill_1, zeros(size(y_fill_1))], 'g', 'FaceAlpha', 0.3, 'EdgeColor', 'none');

x_fill_2 = linspace(-2, 2, 100);
y_fill_2 = f(x_fill_2);
fill([x_fill_2, fliplr(x_fill_2)], [y_fill_2, zeros(size(y_fill_2))], 'y', 'FaceAlpha', 0.2, 'EdgeColor', 'none');

x_fill_3 = linspace(-3, 3, 100);
y_fill_3 = f(x_fill_3);
fill([x_fill_3, fliplr(x_fill_3)], [y_fill_3, zeros(size(y_fill_3))], 'r', 'FaceAlpha', 0.1, 'EdgeColor', 'none');

% Vertikale Linien für μ ± kσ
line([-1 -1], [0 f(-1)], 'Color', 'k', 'LineStyle', '--');
line([1 1], [0 f(1)], 'Color', 'k', 'LineStyle', '--');
line([-2 -2], [0 f(-2)], 'Color', 'k', 'LineStyle', '--');
line([2 2], [0 f(2)], 'Color', 'k', 'LineStyle', '--');
line([-3 -3], [0 f(-3)], 'Color', 'k', 'LineStyle', '--');
line([3 3], [0 f(3)], 'Color', 'k', 'LineStyle', '--');

% Beschriftungen
title('Normalverteilung (\mu=0, \sigma=1) mit 68-95-99.7 Regel');
xlabel('x');
ylabel('f(x)');
legend('Dichtefunktion', ...
       sprintf('68%% (\\mu±\\sigma, P=%.4f)', P_1sigma), ...
       sprintf('95%% (\\mu±2\\sigma, P=%.4f)', P_2sigma), ...
       sprintf('99.7%% (\\mu±3\\sigma, P=%.4f)', P_3sigma), ...
       'Location', 'northeast');

% Wahrscheinlichkeiten in der Konsole ausgeben
fprintf('Wahrscheinlichkeiten:\n');
fprintf('  μ ± 1σ: %.4f (68.27%%)\n', P_1sigma);
fprintf('  μ ± 2σ: %.4f (95.45%%)\n', P_2sigma);
fprintf('  μ ± 3σ: %.4f (99.73%%)\n', P_3sigma);