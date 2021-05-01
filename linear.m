x =  [2.5 3.5 5 6 7.5 10 12.5 15 17.5 20];
y = [5 3.4 2 1.6 1.2 .8 .6 .4 .3 .3];

sumX = sum(x);
sumY = sum(y);
sumXY = sum(x .* y);
sumX2 = sum(x .^ x);
n = length(x);

A = [n sumX ; sumX sumX2];
B = [sumY ; sumXY];
C = inv(A) * B;

b = C(1)
a = C(2)

y_avg = sumY/n;
St = sum( (y - y_avg) .^2)
Sr = sum( (y - a*x - b) .^2)
R2 = (St-Sr)/St
Sy = sqrt(St /(n-1))
Syx = sqrt(Sr / (n-2))
