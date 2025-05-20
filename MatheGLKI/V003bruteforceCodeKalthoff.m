%Vorlesung 3

%Brute-Force-Code von Prof. Kalthoff
%Mit erweiterung um schneller zum min. mu zu kommen

I0 = 1E6;     % Ursprüngliche Intensität ohne Absorber
mu = 0.20161; % Zahl der Quanten vor dem Absorber
 
x = 0:0.5:20; % Absorberdicken in 5mm Schritten
Ix = I0*exp(-mu*x); % Intensitätswerte in Abh. von x
Ix = round(Ix);     % Runden auf Integer
Ix2 = poissrnd(Ix); % Zählstatistik erzeugen
 
i = 1; % Init Zählindex für for-Schleife
X2 = [];

muOpt = 0.1; %Startwert für mu
X2Opt = Inf; %Startwert für Abstandsmaß
 
for mu = 0.1:0.0001:0.3
    X2(i,:) = [mu, sum((Ix2 - I0*exp(-mu*x)).^2)];
    if (X2(i,2) < X2Opt)
        X2Opt=X2(i,2)
        muOpt = mu
    end
    i = i + 1;
end


plot(X2(:,1),X2(:,2),muOpt,X2Opt,'ro')
xlabel('$\mu$','Interpreter','LaTeX')
ylabel('$\chi^2$','Interpreter','LaTeX')