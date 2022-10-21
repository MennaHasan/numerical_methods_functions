%setting values for the the external force p1
p1 = 0:1:400;
%calculating the corresponding values of the force AB
AB = 80 - (0.6*p1);

%plotting P1 vs AB
plot (p1,AB);
xlabel("external force p1 (kip)");
ylabel("internal force in AB (kip)");
