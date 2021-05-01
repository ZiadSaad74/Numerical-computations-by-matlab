Func = input('Enter the function','s');
f = inline(Func);

xr = input('Enter the lower value');
xrr = xr - (f(xr)/diff(f(xr)));
error = 1;
tol = .2
counter = 0;

while error > tol
    counter = counter+ 1;
    X = xrr
    f(xr)
    if f(xu)*f(xrr) > 0
        xu = xrr;
        xrr = xr - (f(xr)/diff(f(xr)));
    elseif f(xu)*f(xrr) < 0
        xl = xrr;
        xrr = xr - (f(xr)/diff(f(xr)));
    else
        break
    end
    error = abs((xrr - X)/xrr);
end 
counter 
error 
