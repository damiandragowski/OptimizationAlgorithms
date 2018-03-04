function [ xk, k, line ] = FR( fun, x0, e, alg)

Dk = eye(length(x0));
k = 0;
xk = x0;


[val, grad] = fun(xk)
line = [xk]
while (abs(grad) > e)
    
    if (mod(k, 10) == 0)
        Dk = eye(length(x0));
    end
    
    line = horzcat(line,xk);
    
    
    dk = -Dk*grad;
    [a1, a2, a3] = alfa_max(@(alfa)fun(xk+alfa*dk), 0, 1);
    if ( alg == 'parabolic' )
        disp alg
        ak = alfa_parabola(@(alfa)fun(xk+alfa*dk), a1, a2, a3, dk, 1e-4);
    end
    xk1 = xk + ak*dk;
    
    xk = xk1;
    
    [val, grad1] = fun(xk1);

    Dk = [-grad1(1),0,0;0,-grad1(2),0;0,0,-grad1(3)]  + ((grad'*grad)/(grad1'*grad1))*Dk;
    
    grad = grad1;    
    k = k+1;    
end
line = horzcat(line,xk);
end

