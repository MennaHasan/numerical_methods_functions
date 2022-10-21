% making vectors for the x-axis
% x1 for plotting the funciton on a wide range
% x2 is for plotting the function on a more specific region
x1 = -50:0.01:50;
x2 = 0:0.01:4.5;

%getting the corresponding y coordinates for each of the x vectors
y1 = 2*x1.^3-11.7*x1.^2+17.7*x1-5;
y2 = 2*x2.^3-11.7*x2.^2+17.7*x2-5;

%plotting x vs f(x) using the wide range
figure(1);
plot(x1,y1);
xlabel('x');
ylabel('y = f(x)');

%plotting x vs f(x) using the more specific rabge
figure(2);
plot(x2,y2);
xlabel('x');
ylabel('y = f(x)');

