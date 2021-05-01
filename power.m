x = [2.5 3.5 5 6 7.5 10 12.5 15 17.5 20];
y = [5 3.4 2 1.6 1.2 .8 .6 .4 .3 .3];

Y = log(y);
X = log(x);

sumX = sum(X);
sumY = sum(Y);
sumXY = sum(X .* Y);
sumX2 = sum(X .^ 2);
n = length(X);

A = [n sumX ; sumX sumX2];
B = [sumY ; sumXY];
C = inv(A) * B;

a = exp(C(1))
b = C(2)

y_avg = sumY/n;
St = sum( (Y - y_avg) .^2)
Sr = sum( (Y - C(1) - C(2)*X) .^2)
R2 = (St-Sr)/St
Sy = sqrt(St /(n-1))
Syx = sqrt(Sr / (n-2))
