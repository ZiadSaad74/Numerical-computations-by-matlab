clear all
i =1

X(i) = zeros(1,3);
sX = input('Enter X \n','s')
sY = input('Enter Y \n','s')
sZ = input('Enter Z \n','s')

Fx = inline(sX);
Fy = inline(sY);
Fz = inline(sZ);

error= 1;
tol = 1e-4;
while error > tol
    xold = X(i);
    X(i+1) = [Fx(X(i),X(i)) , Fy(X(i+1),X(i)) , Fz(X(i+1),X(1+i))]
    new_e = (X-xold) ./X;
   error = max(abs(new_e));
end 