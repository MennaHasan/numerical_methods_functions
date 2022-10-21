%initializing values for external force p2
p2 = 0:1:400;
%getting the corresponding absolute values for the internal members
R1 = abs((0.8*p2) - 120);
R2 = abs((0.48*p2) + 128);
R3 = abs((-0.6*p2) -160);

%plotting p2 vs R1 and R2 and R3
plot (p2,R1);
hold on
plot (p2,R2);
hold on
plot (p2,R3);

xlabel("value of the external force P2 (kip)");
ylabel("absolute value of the internal member forces (kip)");
legend('R1','R2','R3');
