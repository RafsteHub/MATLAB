%Nach Vorlesung 3 - Gradientenverfahren

% Gradient ist = die Steigung
% X2 nach mu ableiten ist hier nötig

I0 = 1E6;       % Ursprüngliche Intensität ohne Absorber
mu = 0.20161;   % Wahrer Absorptionskoeffizient

x = 0:0.5:20;       % Absorberdicken in 5mm Schritten
Ix = I0*exp(-mu*x); % Intensitätswerte in Abh. von x
Ix = round(Ix);     % Runden auf Integer
Ix2 = poissrnd(Ix); % Zählstatistik erzeugen

% Initialisierung
muOpt = 0.1;        % Startwert für mu
alpha = 1E-9;       % Lernrate/Schrittweite
max_iter = 1000;    % Maximale Iterationen
tolerance = 1e-6;   % Konvergenzkriterium

% Vorbereitung für Chi-Quadrat Berechnung
X2 = [];

for iter = 1:max_iter
    % Berechne Gradient (wie in deinem Originalcode)
    dX2dmu = sum((Ix2 - I0*exp(-muOpt*x)) .* (I0*x.*exp(-muOpt*x)));
    
    % Update mu (deine Methode mit Verbesserung)
    muOpt = muOpt + alpha * dX2dmu;
    
    % Berechne Chi-Quadrat für Tracking
    current_X2 = sum((Ix2 - I0*exp(-muOpt*x)).^2 ./ Ix);
    X2 = [X2; [muOpt, current_X2]];
    
    % Abbruchbedingung wenn Gradient klein genug
    if abs(dX2dmu) < tolerance
        break;
    end
end

% Ergebnisse anzeigen
fprintf('Optimierter mu-Wert: %f\n', muOpt);
fprintf('Wahrer mu-Wert: %f\n', mu);
fprintf('Anzahl Iterationen: %d\n', iter);

% Plot wie in deinem Originalcode, aber mit Verbesserungen
figure;
plot(X2(:,1), X2(:,2), 'b-', 'LineWidth', 1.5);
hold on;
plot(muOpt, X2(end,2), 'ro', 'MarkerSize', 10, 'LineWidth', 2);
plot(mu, sum((Ix2 - I0*exp(-mu*x)).^2 ./ Ix), 'go', 'MarkerSize', 10, 'LineWidth', 2);
xlabel('\mu', 'FontSize', 12);
ylabel('\chi^2', 'FontSize', 12);
title('Gradientenverfahren zur Optimierung von \mu', 'FontSize', 14);
legend('\chi^2 Verlauf', 'Optimierter Wert', 'Wahrer Wert', 'Location', 'best');
grid on;