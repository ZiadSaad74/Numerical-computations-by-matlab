Func = input('Enter the function \n','s');
f = inline(Func);

xl = input('Enter the lower value \n');
xu = input('Enter the upper value \n');
xr = (xl+xu)/2;

steps = input('Enter number of steps \n');

error = 1;
counter = 1;

while counter < steps
    counter = counter+ 1;
    X = xr;
    if f(xu)*f(xr) > 0
        xu = xr;
        xr = (xu + xl)/2;
    elseif f(xu)*f(xr) < 0
        xl = xr;
        xr = (xu+xl)/2;
    else
        break
    end
    error = ((xr - X)/xr);
end 
disp('The tolerance is : ');
f(xr)
disp('The root is : ');
xr