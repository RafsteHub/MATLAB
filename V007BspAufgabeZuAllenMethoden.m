%Nach Vorlesung 7

% Aufgabe: Exponentieller Zerfall (Parameteridentifikation)
% Gegeben sind Messdaten (ti, yi), die einem exponentiellen Zerfallsprozess folgen:
% y = A * exp(-b * t) + ε,  wobei ε Rauschen ist. 
% Bestimmen Sie die Parameter A und b aus den simulierten Daten
% (mit A = 2.5, b = 0.8 und normalverteiltem Rauschen ε ~ N(0, 0.1^2)).

%Formel:
y = A * exp(-b * t) + E

% Eingabedaten
t = [0.0, 0.5, 1.0, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0];  % Zeitpunkte
y = [2.61, 1.68, 1.06, 0.76, 0.48, 0.33, 0.20, 0.15, 0.09];  % Messwerte

% Zu schätzende Parameter (wahrer Wert zur Referenz)
A_true = 2.5;  % Wahrer Parameter A
b_true = 0.8;  % Wahrer Parameter b

% Aufgaben:
% 1. Verwenden Sie cftool, um A und b durch nichtlineare Regression zu schätzen.
% 2. Linearisieren Sie das Modell (log-Transformation) und schätzen Sie A, b via lineare Regression.
% 3. Brute-Force-Methode: Minimieren Sie den MSE durch Gittersuche für A ∈ [2, 3] und b ∈ [0.5, 1].
% 4. Methode der Momente: Schätzen Sie A und b aus den empirischen Momenten.
% 5. Maximieren Sie die Log-Likelihood mit fminsearch.

%Geänderte Formel für cftool:
y = A * exp(-b * t) + E