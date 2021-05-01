A = input('Please Enter the elements of the Matrix A = \n' ) ;
b = input('Please Enter the elements of the Matrix b = \n' ) ;
N = length(b);
X = [0];

if A(N,N) == 0
    disp('The system has no solution')
    return 
else
    for i = 1: N-1
        for j = 1+i :N
            Pevout = -A(j,i) / A(i,i);
            A(j,:) = A(j,:) + Pevout*A(i,:);
            b(j) = b(j) + Pevout*b(i);
            X = inv(A)*b;
        end
    end
end
X