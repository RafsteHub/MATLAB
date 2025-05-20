%Vorlesung 2

%Brute Force Ansatz
I0 = 1E6; %ursprüngliche Intensität der Strahlung ohne Absorber
mu = 0.20161; %Zahl der Quanten vor dem Absorber
x=0:0.5:20; % Absorberdicken in 5mm Schritten

Ix = I0*exp(-mu*x); %Intensitätswerte in Abhängigkeit von x
Ix = round(Ix); % Runden auf Integer
Ix2 = poissrnd(Ix); %Zählstatistik erzeugen

i=1; %Init Zählindex für for-schleife
X2 = []; %chi quadrat

for mu = 0.1:0.0001:0.3
    X2(i,:) = [mu, sum((Ix2 - I0*exp(-mu*x)).^2)]; % Quadrierte Abweichungen
    i = i+1;
end
%Durchläuft verschiedene Werte des Abschwächungskoeffizienten und berechnet für jeden 
%mu-Wert die Summe der quadratischen Abweichunge, also chi quadrat

plot(X2(:,1),X2(:,2))
xlabel('$\mu$','Interpreter','Latex')
ylabel('$\chi^2$','Interpreter','Latex')
%Visualisierung

[chi2_min, idx] = min(X2(:,2))
% Minimaler X2-Wert und Index-Wert (Zeile in der der X2-Wert steht)

mu_min = X2(idx, 1)
%minimum von mu

%Wie findet man das mu mit einem Gradientenabstiegsverfahren am
%leichtesten?
%chi quadrat ableiten??