%Vorlesung 2 

% Visualisierung mit Rauschen
%Linearisierung durch Logarithmus

x= 0:0.2:8;
%Dicke des Absorbers

I0 = 1E6;
%Anfangsintensität

%mu=0.20161;
%Abschwächungskoeffizient

Ix = I0*exp(-mu*x);
%Lambert-Beer-Gesetz (exponential Funktion)

close all;
plot(x,Ix,'ko');
%Visualiserung

x=0:0.5:20;
%geänderte x-Werte

Ix = I0*exp(-mu*x);

%Ab hier Linearisierung durch logarithmus

Ix2 = round(Ix);
%Runden der Werte
Ix3 = poissrnd(Ix2)
%Einfügen von Poisson-Rauschen simuliert die statistischen Schwankungen

plot(x,Ix,'o',x,Ix2,'x')
plot(x,Ix,'o',x,Ix3,'x')
%Visualisierung

%Hinweis: ./ heißt elementweise teilung

m=-(log(Ix3/I0)./x)
%Schätzung von mu

mean(m(2:end))
%Mittelwert der Schätzung von mu (ausgeklammert x=0)

b = log(Ix3/I0)'
%logratihmieren
%transponieren um einen vektor zu erhalten

% Der Befehl ' transponiert und komplex konjugiert

A = [x' ones(41,1)]
%Matrix für die Lineare Regression
%ones erzeugt eine Matrix oder einen Vektor, deren Elemente alle den Wert 1 haben.

inv(A'*A)*A'*b
%Formel für die Lineare Regression um -mu und c zu schätzen
%Das Ergebnis ist eine Gerade! 
%Diese beschreibt die logarithmischen Daten

%Hinwweis: auch in cftool keine exp funktion mehr!


%-----------------------------------------------
% mean(Ix3 / I0)
%Bildet Mittelwert der relativen Intensität
%Um die durchschnittle Abschwächung über den ganzen Bereich zu bestimmen

