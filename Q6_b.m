function x=Q6_b(A,B)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% This code written by Mostafa Youssef                         %
%%% on October 15, 2017 to perform Naive Gauss elimination       %
%%% The pseudocode is based on Figure 9.4 in the text of Chapra  %
%%% and Canale 6th edition.                                      %
%%% It performs Naive Gauss elimination                          %
%%% This verion 1.0.0 of the code                                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% List of the input
% A is an nxn matrix
%B is an nx1 vector
% n is the number of linear equations
n = size(A,1);
%PHASE 1: Elimination
for k=1:n-1 % Pivot equation
    for ll = (k+1):n
        if abs(A(ll,k)) > abs(A(k,k))
            t= A(k,:);
            A(k,:)= A(ll,:);
            A(ll,:)=t;
            tmp= B(k);
            B(k)= B(ll);
            B(ll) = tmp;
        end
        for i=k+1:n % equation in which we want to eliminate xk
            factor = A(i,k)/A(k,k); % A(k,k) is the pivot
            for j=k+1:n
                A(i,j)=A(i,j)-factor*A(k,j); %cancellation of xk
            end
            B(i)=B(i)-factor*B(k); % also apply the subtraction to R.H.S.
        end  % ended elimination of xk
    end
    % PHASE 2: Back substitution
    x(n)=B(n)/A(n,n);
    for i=n-1:-1:1 % Work on equations n-1 to 1
        sum=B(i);
        for j=i+1:n
            sum=sum-A(i,j)*x(j);
        end
        x(i)=sum/A(i,i);
    end
    
end
end
