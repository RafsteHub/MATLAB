%ABGABE 2

%AUFGABE 1:

% Definiert den x-Wertebereich, linspace dient zur Erzeugung von 1000 Punkten 
% mit gleichem Abstand zwischen 0 und 6*pi
x = linspace(0, 6*pi, 1000);

% Berechnet den Sinuswert für jeden x-Wert
y = sin(x);

% Erstellt den Plot mit blauer, durchgezogener line "b-"
% Und der Liniendicke 2
plot(x, y,'b-','LineWidth', 2);

% Beschriftet den Plot (Überschrift)
title('Sinus Funktion von 0 bis 6');

% Beschriftet die x-Achse mit Markierungen von 0 bis 6*pi im Abstand von pi
% ticks legt die Stelle der Markierung fest, ticklabels die Markierung
xticks(0:pi:6*pi);
xticklabels({'0', '\pi', '2\pi', '3\pi', '4\pi', '5\pi', '6\pi'});

% Fügt eine schwarze, durchgezogene Linie "k-" hinzu, mit 
% der Dicke 1.5, die Linie ist eine gerade entlang der X-Achse
yline(0, 'k-', 'LineWidth', 1.5);

% Beschriftet die y-Wert 
yticks(-1:0.2:1);
ylim([-1.1, 1.1]); 


%AUFGABE 2