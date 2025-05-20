%Nach Vorlesung 2

%Abschwächung von Cäsium-Strahlung beim Durchgang durch Aluminium
%Visualisierung wie die Intensität der Strahlung bei zunehmender Dicke des
%Absorbers abnimmt.

x = 0:0.2:8
%Dicke des Materials - von x in 0.2 --> 2mm Alumium von 0 bis 8cm

I0 = 1E6
%Wert für I(0), Stärke der Strahlung ohne Absorber

mu = 0.20161
%Abschwächungskoeffizient
%Maß dafür, wie stark das Material die Strahlung abschwächt,
%hoher mu wert = das Material schwächt start ab
%mu beschreibt also, wie stark das Aluminium die Strahlung abschwächt

Ix = I0*exp(-mu*x);
%Lambert-Beer-Gesetz
 
close all
plot (x,Ix,'ko')
%Visualisierung

x= 0:0.5:20;
%Geänderte x-Werte, in größeren Schritten bis 20cm

Ix = 10*exp(-mu*x)
%Anwendung der neuen x-Werte auf die Funktion

plot (x,Ix,'ko')
%Visualisierung
