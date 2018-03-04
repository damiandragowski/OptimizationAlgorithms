function [ val gradient hess ] = fun(x)


syms x1 x2 x3;
f = (x1-2*x3)^4+2*(x1+x2)^2+5*(x3-2*x2)^2;
difx1=diff(f,x1);
difx2=diff(f,x2);
difx3=diff(f,x3);

%gradf(x(1),x(2),x(3))=[diff(f,x(1));diff(f,x(2));diff(f,x(3))]
hessianik(x1,x2,x3)=hessian(f)

gradient = [difx1,difx2,difx3];
hess=hessianik

%gradient=[
%        4*x(1)*x(2)^2 + x(2) + 2*x(1) + 1;
% 4*x(2)*x(1)^2 + x(1) + 2*x(2) + 2*x(3) + 2;
%               12*x(3)^3 + 2*x(2) + 3];
           
val = x(1)^2+x(2)^2+3*x(3)^4+2*x(1)^2*x(2)^2+x(1)*x(2)+2*x(2)*x(3)+x(1)+2*x(2)+3*x(3);

%hess=1;
%hess = hessianik(x(1),x(2),x(3));
%hess = [  4*x(2)^2 + 2, 8*x(1)*x(2) + 1,       0;
% 8*x(1)*x(2) + 1,  4*x(1)^2 + 2,       2;
%           0,           2, 36*x(3)^2];


