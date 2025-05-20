%Nach Vorlesung 5

% Daten generieren (Beispiel: wahrer mu = 0.1, mit Rauschen)
rng(0); % Reproduzierbarkeit
x = 0:0.5:20;
I0 = 1e6;
mu_true = 0.1; % Unbekannt, wird geschätzt
Ix_noiseless = I0 * exp(-mu_true * x);
Ix = Ix_noiseless + 0.05 * I0 * randn(size(x)); % Rauschen hinzufügen

% Negative Log-Likelihood definieren (zu minimieren)
negLogL = @(mu) sum((Ix - I0 * exp(-mu * x)).^2); % Least-Squares (äquivalent zu ML bei Normalverteilung)

% Mu schätzen via Optimierung
mu_guess = 0.05; % Startwert
options = optimset('Display', 'iter');
mu_hat = fminsearch(negLogL, mu_guess, options);

% Ergebnis
fprintf('Geschätztes mu: %.4f (wahrer Wert: %.4f)\n', mu_hat, mu_true);

% Visualisierung
figure;
plot(x, Ix, 'o', 'DisplayName', 'Daten mit Rauschen');
hold on;
plot(x, I0 * exp(-mu_hat * x), 'r-', 'LineWidth', 2, 'DisplayName', sprintf('Fit (mu=%.4f)', mu_hat));
xlabel('x'); ylabel('I_x');
legend;
grid on;