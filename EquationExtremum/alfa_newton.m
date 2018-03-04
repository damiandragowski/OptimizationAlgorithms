function [x_min k] = alfa_newton(f, a, d0, epsilon)

if nargin < 4
   epsilon = 0.000001 
end



k=0;
alfaK=a;
alfaKold=a;
[fval grad hess]=f(alfaK);
f1prim=grad'*d0;
f2prim=d0'*hess*d0;
alfaKOld = alfaK;
alfaK=alfaK-(f1prim/f2prim);

while (abs(alfaK-alfaKold) > epsilon && abs(f1prim) > epsilon )
    [fval grad hess]=f(alfaK);
    f1prim=grad'*d0;
    f2prim=d0'*hess*d0;
    alfaKOld = alfaK;
    alfaK=alfaK-(f1prim/f2prim);
    k=k+1;
end
    
x_min = alfaK;