Func = input('Enter the function','s');
f = inline(Func);

xl = input('Enter the lower value');
xu = input('Enter the upper value');
xr = xu - (((xl - xu)*f(xu))/(f(xl) - f(xu)));

error = 0;
steps = input('Enter number of steps \n');
counter = 1;
% tol = input('Enter tolerance \n');


while counter < steps
    
    X = xr;
    error = f(xr);
    if f(xu)*f(xr) > 0
        xu = xr;
        xr = xu - (((xl - xu)*f(xu))/(f(xl) - f(xu)));
    elseif f(xu)*f(xr) < 0
        xl = xr;
        xr = xu - (((xl - xu)*f(xu))/(f(xl) - f(xu)));
    else
        break;
    end
    counter = counter+ 1;
end 
counter 
f(xr)