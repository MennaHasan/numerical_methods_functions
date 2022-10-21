function problem3(n,x)
tic;
    k = 1:n;
    newval = 0 ;
    valarr = zeros(1,n);
    for i= 0:n-1
       newval = newval+ ((-1)^i)*(x^(2*i))/(factorial(2*i));
       %fprintf("%f\n",newval);
       valarr(i+1)= newval; 
    end
    true_error_arr = abs((valarr(1:end) - cos(x))./ cos(x))*100;
    loglog(k,true_error_arr);
    grid on;
    xlabel('k value');
    ylabel('error percentage');
    
toc;
end