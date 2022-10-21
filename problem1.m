%this code is solution for problem1 in the problem set
%part of the course engineering analysis and computation
%code is developed by Menatalla Hasan

%this script is developed to graph the annual payment value given different
%interest rates given the number of payments is cnostant at 6 and the
%present value is constant at 60000


%declaring values for prosent value (p) and number of annual payments(n)
p = 60000;
n = 6;

%making an array of possible values of the interest rate (i)
i = 0.01:0.005:1;

%calculating the corresponding values of the annual payments (A)
a = (1+i).^n;
A = p*((i.*a)./(a-1));

%plotting the interest rate vs the annual payment
plot(i,A);

%formatting the axis
xlabel("interest rate (%)");
ylabel("the Annual amount A ($)");
axis([-0.1, 1.1, 0 , 70000]);
grid;