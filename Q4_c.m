%case 1 when k =0.05
%defining the constant k
k1 = 0.05;

%defining values of p and calculating the corresponding values of x
p = 0:0.1:100;
x1 = ones(1,length(p));
for i = 1:length(p)
    x1(i) = Q4_bisection_code_m(0,1,2000,0.00001,p(i),k1);
end

%case 2 when k =0.1
%defining the constant k
k2 = 0.1;
%calculating the corresponding values of x
x2 = ones(1,length(p));
for i = 1:length(p)
    x2(i) = Q4_bisection_code_m(0,1,2000,0.00001,p(i),k2);
end

%plotting the results, p vs x
plot(p,x1);
hold on;
plot(p,x2);
title('pressure vs mole fraction at k =0.05 and k =0.1');
xlabel('pressure (atm)');
ylabel('the mole farction');
legend('at k=0.05', 'at k=0.1');
