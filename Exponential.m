x = [2.5 3.5 5 6 7.5 10 12.5 15 17.5 20];
y = [5 3.4 2 1.6 1.2 .8 .6 .4 .3 .3];

Y = log(y);

sumX = sum(x);
sumY = sum(Y);
sumxY = sum(x .* Y);
sum_x2 = sum(x .^ 2);
n = length(x);

A = [n sumX ; sumX sum_x2];
B = [sumY ; sumxY];
C = inv(A) * B;

a = exp(C(1))
b = C(2)

y_avg = sumY/n;
St = sum( (Y - y_avg) .^2)
Sr = sum( (Y - C(1) - C(2)*x) .^2)
R2 = (St-Sr)/St
Sy = sqrt(St /(n-1))
Syx = sqrt(Sr / (n-2))
