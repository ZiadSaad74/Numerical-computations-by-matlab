Func = input('Enter the function','s');
f = inline(Func);
syms x;

xr = input('Enter the value of xr');
dif_xr = diff(f(x));
dxr = inline(dif_xr);


xrr = xr - (f(xr) / dxr(xr) );

error = 1;
tol = .45;
counter = 1;

while error > tol
    counter = counter+ 1;
    X = xr;
    xrr = xr - (f(xr) / dxr(xr) );
if  xr+1 == X 
    break
else
    continue
end
end

   counter 
   Xr