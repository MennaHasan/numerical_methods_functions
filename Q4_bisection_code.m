function [root,e_approx,iter]= Q4_bisection_code(xl,xu,imax,e_stopping)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% This code written by Mostafa Youssef on March 10, 2019    %
%%% to perform root finding using bisection method               %
%%% The pseudocode is based on Figure 5.10 in the text of Chapra %
%%% and Canale 6th edition.                                      %                       
%%% This is verion 1.0.0 of the code                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%=====================================================================
% List of input
%===================
% xl: lower estimate
% xu: upper estimate
%imax: maximum number of iterations
%e_stopping the stopping crieteria for the iterations
%the code will stop if iterations>=imax  OR e_stopping is satisfied
% List of output
%==================
% root
%approximate relative error
%==============================================================
tic;
iter=0;
old_root=xl ; % I decided to take xl is my first estimate

%%%%%%   [*] %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This piece was added to make sure the presence of sign change before
% doing any iterations. Originally the code would run and give erronous
% results if at the beginning no sign change is present.

test=calculatef(xl)*calculatef(xu);
if test > 0
    error('No sign change, bisection method fails');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% iteration loop
while (1) 
    root=(xl+xu)/2;
    iter=iter+1;
    
    % calculate the approximate relative error
    if root ~=0 % Check I will not divide by zero
        e_approx=abs((root-old_root)/root)*100;
    end
    
    % Perform the Bisection test
    test=calculatef(xl)*calculatef(root); % We are calling a function named calculatef to calculate f(x).
    if test<0
        xu=root;
    elseif test>0
        xl=root;
    else
        e_approx=0;
    end
    % Check if we satisfied the stopping criteria
    if e_approx<e_stopping || iter>=imax
        break 
    end
    % Make sure to store the value of the old_root because we need it to
    % calculate error.
    old_root=root;
end
toc
%Note based on Oct 23, 2019 discussion in class (Omar-Shaza-Sherif) IF the true root is zero, and our estimaiton of it is 
% zero too, then the code will skip the if-statement related to the approximate error calculation. But then in the
% in the f-statement related to the bisection test, this will be detected in the "else" section and then the approximat
%error will be set to zero which will eventually lead to loop termination due to e_approx < e_stopping.

%[*] Many thanks to Mohamed Shalaby (Fall 2020) for pointing out the test case that
%made the orignal code to fail when the there is no sign change at the
%beginning.

