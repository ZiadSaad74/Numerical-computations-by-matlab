X=zeros(1,3);

x=input('Enter x \n','S');
y=input('Enter y \n','S');
z=input('Enter z \n','S');
fx=inline(x);
fz=inline(z);
fy=inline(y);

tol=1e-4;
error=1;
counter=0;

while  error >tol
    Xold=X;
    X(1) = fx(X(2),X(3));
    X(2) = fy(X(1),X(3));
    X(3) = fz(X(1),X(2));
     
    errorx=(X-Xold)./X;
    error=max(abs(errorx));
    counter=counter+1;
end

disp('X=');
disp(X(1));
disp('Y=');
disp(X(2));
disp('Z=');
disp(X(3));
disp('number of iteration');
disp(counter);
