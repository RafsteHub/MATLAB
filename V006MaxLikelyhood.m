%Vorlesung 5

mu = 6.34
sig = 1.45
r = mu +sig*randn(10000,1);

r(1:10)  %Ersten 10 Messwerte anzeigen lassen

histogram(r)

h = histogram(r)

%Informationen von histogramm an cftool übergeben

y = h.values;
x = limespace(0.3,11.7,58);

%Klausuraufgabe!

mean(r) % = mu
std(r) % = sig

%cftool ist für dummies

