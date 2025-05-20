%Vorlesung 8

t = [2,3,1,3,4]

%ft = lambda*exp^-(lambda*t);

%sum(log(ft)*exp(.*t))
%lnL = log(fx,lambda)
    
%integral(lnL,lambda);

ft = lambda * exp(-lambda * t)
log(ft)

% Log-Likelihood berechnen
logL = sum(log(ft)) 


mean(t)
var(t)