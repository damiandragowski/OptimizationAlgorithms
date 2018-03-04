clear;
clc;
format;
%figure; hold on;   
x0 = [3;-1;-1];
[val gradient hess] = fun(x0);
d0 = -gradient;
[a1, a2, a3,k] = alfa_max(@(alfa) fun(x0+alfa*d0), 0.02, 0.0001);

%fplot(@(alfa) fun(x0+alfa*d0), [0,  0.0457]);

[x, fm]=fminbnd(@(alfa) fun(x0+alfa*d0), 0, 0.0457, optimset('Display','iter'))
%disp x
%disp fm

%[xmin1 k]=alfa_newton(@(alfa) fun(x0+alfa*d0),0, d0, 0.0001)

%xmin=ZP(@(alfa) fun(x0+alfa*d0), 0, 0.01, 0.00000001)
%[xmin2 k]=alfa_ZP(@(alfa) fun(x0+alfa*d0), 0, 0.01, 0.0000001,50)

%[xmin1 k]=alfa_dychot(@(alfa) fun(x0+alfa*d0), 0, 0.01, 0.0000001,150)

%[xmin3 k]=alfa_fibo(@(alfa) fun(x0+alfa*d0), 0, 0.01, 0.0000001)

[xmin1 k]=alfa_parabola(@(alfa) fun(x0+alfa*d0),a1,a2,a3, d0, 0.0001)



%numlib::fibonacci(10)
