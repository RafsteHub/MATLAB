%Nach Vorlesung 2

A = [1, 1; 
     2, 1; 
     3, 1; 
     4, 1; 
     5, 1 ]

b = [3.1; 
     5.2; 
     7.3; 
     9.1; 
     11.2]

%x=inv(A'*A)*A'*b

sigma = [0.2;
    0.3;
    0.4;
    0.5;
    0.6]

%sigmaq = sigma.^2

W = diag(1 ./ (sigma))

x = inv(A'*(W*W)*A)*A'*(W*W)*b

