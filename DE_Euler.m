F = 'y+0*x';

x0 = 0;
xn = 1;
y0 = .5;
h = .25;
n = round((xn-x0)/h);
c = 0;
for i = 1 :n
    c = c+1;
    yp = Euler(F, x0,y0,h);
    %[y0,x0] = Euler_imp(F,x0,y0,yp,h);
    [y0,x0] = R_k(F,x0,y0,h);
end 
i