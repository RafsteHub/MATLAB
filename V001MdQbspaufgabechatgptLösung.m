%Nach Vorlesung 1

%Lösung Bsp-Aufgabe von Chat-GPT
%linearer Fall mit Gewichtung
T = [0, 1; 
     1, 1; 
     2, 1; 
     3, 1; 
     4, 1; 
     5, 1]
b = [20.5;
    22.1;
    24;
    25.9;
    27.8;
    29.2]
sigma = [0.5;
    0.6;
    1;
    1.4;
    1.8;
    1.7]
W = diag(1 ./ sigma)
x = inv(T'*(W*W)*T)*T'*(W*W)*b
%Interpretation
%x1= steigung der geraden --> Änderung der Temperatur pro Sekunde
%x2= y-AA --> Temperatur zum Zeitpunkt t=0

%von Chat-GPT vorgeschlagene Lösung
%Wchat = diag(1 ./ sigma.^2)
%xchat = inv(T' * W * T) * T' * W * b

