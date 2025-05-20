%Nach Vorlesung 7

% 1. Stichprobe generieren (n = 100, lambda = 2)
rng(1); % Für Reproduzierbarkeit
n = 100;
lambda_true = 2;
X = exprnd(1/lambda_true, [n, 1]); % Exponentialverteilung in MATLAB: exprnd(1/lambda)

% 2. Empirisches Moment (Mittelwert) berechnen
m1 = mean(X);

% 3. Methode der Momente: E[X] = 1/lambda => lambda_hat = 1/m1
lambda_hat = 1 / m1;

% 4. Ergebnisse ausgeben
fprintf('Wahrer Parameter lambda: %.4f\n', lambda_true);
fprintf('Geschätzter Parameter lambda_hat: %.4f\n', lambda_hat);

% Optional: Histogramm der Daten + geschätzte Dichte
x_vals = linspace(0, max(X), 100);
pdf_true = lambda_true * exp(-lambda_true * x_vals);
pdf_est = lambda_hat * exp(-lambda_hat * x_vals);

figure;
histogram(X, 'Normalization', 'pdf');
hold on;
plot(x_vals, pdf_true, 'r-', 'LineWidth', 2, 'DisplayName', 'Wahre Dichte');
plot(x_vals, pdf_est, 'b--', 'LineWidth', 2, 'DisplayName', 'Geschätzte Dichte');
xlabel('x');
ylabel('Dichte');
title('Vergleich: Wahre und geschätzte Exponentialverteilung');
legend;
grid on;