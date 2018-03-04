function [ f grad ] = fun(x)

f = x(1)^4 + x(2)^4 + 3*x(3)^2 +2*x(1)^2*x(2)^2+x(1)*x(3)+x(2)*x(3)+4*x(1)+x(2)+3*x(3);
grad =[
        4*x(1)^3 + 4*x(1)*x(2)^2 + x(3) + 4; 
        4*x(1)^2*x(2) + 4*x(2)^3 + x(3) + 1;
        x(1) + x(2) + 6*x(3) + 3];

%syms x1 x2 x3;
%gradf(x1,x2,x3)=[diff(f,x1);diff(f,x2);diff(f,x3)]

%GRAD=gradf;
%hessianik(x1,x2,x3)=hessian(f)

%gradient = [difx1,difx2,difx3];
%hess=hessianik
    
    
%f = (x1-2*x3)^4+2*(x1+x2)^2+5*(x3-2*x2)^2;

%hess=1;
%hess = hessianik(x1,x2,x3);
%hess = [ 12*(x1 - 2*x3)^2 + 4,   4,     -24*(x1 - 2*x3)^2;
%                    4,  44,                   -20;
%   -24*(x1 - 2*x3)^2, -20, 48*(x1 - 2*x3)^2 + 10];
