%this code is solution for problem2 in the problem set
%part of the course engineering analysis and computation
%code is developed by Menatalla Hasan

%this script is developed to express the relationship between an
%independent variable (t) and a dependent variable v(t)
%the relationship can only be described as a piecewise function

%this scripts handles t values from -5 to 50

%initializing t to the desired values
t = -5:0.5:50;
%initializing v(t) to a vector of zeros of the same size as t
v = zeros(size(t));

%assigning values to v(t)
%the values depend on the value of t
for i = 1:length(t)
    if t(i)<=10 && t(i)>=0
        v(i) = 11*t(i)^2 -5*t(i);
    elseif t(i)<=20 && t(i)>=10
        v(i) = 1100-5*t(i);
    elseif t(i)<=30 && t(i)>= 20
        v(i) = 50*t(i) +2*(t(i)-20)^2;
    elseif t(i)>30
        v(i) = 1520*exp(1)^(-0.2*(t(i)-30));
    else
        v(i) = 0;
    end
end

%plotting t vs v
plot(t,v,'x-');

%formatting the axes
title('piecewise function v(t)');
xlabel('t');
ylabel('v');