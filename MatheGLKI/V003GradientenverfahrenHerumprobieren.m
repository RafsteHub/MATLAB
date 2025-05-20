%Vorlesung 3 

%Gradientenverfahren
%Gradient ist = die Steigung

%X2 nach mu ableiten ist hier nötig

I0 = 1E6;     % Ursprüngliche Intensität ohne Absorber
mu = 0.20161; % Zahl der Quanten vor dem Absorber
 
x = 0:0.5:20;       % Absorberdicken in 5mm Schritten
Ix = I0*exp(-mu*x); % Intensitätswerte in Abh. von x
Ix = round(Ix);     % Runden auf Integer
Ix2 = poissrnd(Ix); % Zählstatistik erzeugen
 
X2 = [];

muOpt = 0.1; %Startwert für mu
X2Opt = Inf; %Startwert für Abstandsmaß

muStart = muOpt;    %Startwert für mu im Gradientenverfahren
dX2dmu = sum(Ix2 - I0*exp(-muStart*x).*x.*exp(-muStart*x));
alpha = 1E-9;        %Lernrate/Schrittweite

mu = 0.1;

while (sign(dX2dmu)==(-1))
       mu=mu-[alpha*dX2dmu]; %-, weil dX2dmu schon neg. ist
       dX2dmu = sum(Ix2 - I0*exp(-mu*x).*x.*exp(-mu*x));
end

mu

%plot(X2(:,1),X2(:,2),muOpt,X2Opt,'ro')
%xlabel('$\mu$','Interpreter','LaTeX')
%ylabel('$\chi^2$','Interpreter','LaTeX')