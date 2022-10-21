%preparing constants to use
%Pa = 200;
Pb = 100;

k1 = (0.0128*200)/(0.12)^2;
k2 = (0.0128*200)/(0.1)^2;
k3 = (0.0128*200)/(0.1)^2;
k4 = (0.0128*100)/(0.06)^2;
k5 = (0.0128*150)/(0.08)^2;
k6 = (0.0128*150)/(0.08)^2;
k7 = (0.0128*100)/(0.06)^2;

%preparing a and b
a = zeros(11);
b = zeros(11,1);
a(1,:) = [-1,0,1,0,-k1,0,0,0,0,0,0];
b(1,1) =  0;
a(2,:) = [1,-1,0,0,0,-k2,0,0,0,0,0];
b(2,1) =  0;
a(3,:) = [1,0,0,0,0,0,-k3,0,0,0,0];
b(3,1) =  150;
a(4,:) = [0,1,0,0,0,0,0,-k4,0,0,0];
b(4,1) =  150;
a(5,:) = [0,1,0,-1,0,0,0,0,-k5,0,0];
b(5,1) =  0;
a(6,:) = [0,0,0,-1,0,0,0,0,0,-k6,0];
b(6,1) =  -150;
a(7,:) = [0,0,0,1,0,0,0,0,0,0,-k7];
b(7,1) =  100;
a(8,:) = [0,0,0,0,1,-1,-1,0,0,0,0];
b(8,1) =  0;
a(9,:) = [0,0,0,0,0,0,1,1,0,-1,0];
b(9,1) =  0;
a(10,:) = [0,0,0,0,0,1,0,-1,-1,0,0];
b(10,1) =  0;
a(11,:) = [0,0,0,0,0,0,0,0,1,1,-1];
b(11,1) =  0;

%calling the function
out = Q6_b(a,b);
    disp(out(3));

