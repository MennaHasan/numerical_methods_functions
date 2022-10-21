function [x] = thomas_algo(e,f,g,r)
    %checking if the input vectors are valid for a tri-diagonal matrix
    if length(f) == length(e)+1 && length(f) == length(g)+1
        n = length(f);
        %getting the new values of the e's and f's 
        for k = 2:n
           e(k-1)=e(k-1)/f(k-1);
           f(k)= f(k)-(e(k-1)*g(k-1));
        end
        %getting the new values of the r's 
        for k = 2:n 
           r(k)=r(k)-e(k-1)*r(k-1); 
        end
        %getting the values of the unknowns (x's)         
        x(n) = r(n)/f(n);
        for k=n-1:-1:1
           x(k) = (r(k)-g(k)*x(k+1))/f(k);
        end
    %output an error messege if the input vectors aren't valid
    else
        error("please enter vlaid arguements to the function, the lengths of e and g are n-1");
    end
end