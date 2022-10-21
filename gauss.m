function x = gauss(A,b)
    [n, m] = size(A);
    
    %loop of pivot
    for k = 1: n
        for i = k+1:n
            factor = A(i,k)/A(k,k);
            for j = k+1 :n
                A(i,j) = A(i,j) - factor * A(k,j);
            end
            b(i) = b(i) - factor*b(k);
        end
    end
% backward substitution
    x(n)= b(n) /A(n,n);
    for i = n-1:-1:1
        sum = b(i);
        for j = i+1:n
            sum = sum - A(i,j)*x(j);
        end
        x(i)= sum/A(i,j);
    end
end