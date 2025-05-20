%Vorlesung 1

%Methode der kleinsten Quadrate linearer Fall
A = [6, 1; 
     9, 1; 
     11, 1; 
     13, 1; 
     22, 1; 
     26, 1; 
     28, 1; 
     33, 1; 
     35, 1]

b = [68; 
     67; 
     65; 
     53; 
     44; 
     40; 
     37; 
     34; 
     32]

%A'


%x = inv(A * A') * A' * b;
%ging nicht weil erst A' stehen muss damit 2x2 Matrix entsteht!
 
%A*A'
%A'*A

%A'*b

%x = inv(A * A') * A' * b;
%Ging nicht weil erst A' stehen muss, wie oben
 
x = inv(A' * A) * A' * b; 

%m = -1.3196

%c = 75.7200

%Ab hier linearer Fall mit Gewichtung durch W

sigma = [3; 
     2; 
     3; 
     1; 
     4; 
     1; 
     2; 
     2; 
     3]


W = diag(1 ./ sigma)
%diag macht eine Diagonalmatrix, 1./sigma, führt zu W




xgewichtet= inv(A'*(W*W)*A)*A'*(W*W)*b


% xgewichtet= mit Gewichtung durch W und x=ohne Gewichtung durch W
x
