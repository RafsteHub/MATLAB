%Vorlesung 5


%mu = 0;
%sigma = 1;

% Numerische Integration mit integral()
%fx = (1/(sqrt(2*pi)*sigma)) * exp(-(x-mu).^2/(2*sigma^2));

%p1 = integral(fx, -sigma, sigma);
%p2 = integral(fx, -2*sigma, 2*sigma);
%p3 = integral(fx, -3*sigma, 3*sigma);

sym mu;
x= 0;0.5;20;

I0 = 1E6;
Ix = I0*exp(-mu*x);

sum(log(IO)*exp(-mustBeInteger.*x))

lnL = log(Ix,mu);

integral(lnL,mu);



