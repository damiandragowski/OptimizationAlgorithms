clear;
clc;
format;
%figure; hold on;   
x0 = [1;-1;2];
[val gradient hess] = fun(x0);
%gradient
%hess
%val
d0 = -gradient;
%options = optimoptions('fminunc','GradObj','on','Algorithm','trust-region');

%[x fval]= fminunc(@fun,x0,options);
%x
%fval
[x fval]=fminsearch(@fun,x0);
disp 'fminsearch zwrocilo'
x
[a1, a2, a3,k] = alfa_max(@(alfa) fun(x0+alfa*d0), 0.01, 0.0001)

%fplot(@(alfa) fun(x0+alfa*d0), [0,  0.0457]);

[x, fm]=fminbnd(@(alfa) fun(x0+alfa*d0), 0, a3, optimset('Display','iter'));
disp 'fminbnd zwrocilo x'
x

%[xmin1 k]=alfa_midpoint(@(alfa) fun(x0+alfa*d0),0, a3, d0, 0.0001)


[xmin4 k]=alfa_parabola(@(alfa) fun(x0+alfa*d0),a1,a2,a3, d0, 0.0001);
disp 'alfa_parabola zwrocilo x'
xmin4


%[xmin2 k]=alfa_ZP(@(alfa) fun(x0+alfa*d0), 0, a3, 0.0000001,50)

%[xmin1 k]=alfa_dychot(@(alfa) fun(x0+alfa*d0), 0, a3, 0.0000001,150)

%[xmin3 k]=alfa_fibo(@(alfa) fun(x0+alfa*d0), 0, a3, 0.0000001)

%[xmin1 k]=alfa_newton(@(alfa) fun(x0+alfa*d0),0, d0, 0.0001)


%numlib::fibonacci(10)
