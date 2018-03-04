function [x_min k] = alfa_dychot(f, a, b, epsilon, iter)


if nargin < 5
  iter = 100;
end
if nargin < 4
   epsilon = 0.000001 
end

k=0;                    

ak=a;
bk=b;
xk=(ak+bk)/2;    
deltaK=bk-ak;
fm=f(xk);

while ((abs(deltaK)>2*epsilon) && (k<iter))
    
    x1k = ak + deltaK/4;
    x2k = bk - deltaK/4;

    f1k = f(x1k);
    f2k = f(x2k);
    
    if ( f1k < fm || f2k < fm )
        if ( f1k < fm )
           bk = xk;
           % ak = ak
           deltaK=bk-ak;
           xk = x1k;
           fm = f1k;
        else
            if  ( f2k < fm )
               ak = xk;
               % ak = ak
               deltaK=bk-ak;
               xk = x2k;
               fm = f2k;        
            end
        end
    else
        ak = x1k;
        bk = x2k;
        deltaK = bk-ak;
    end
    
    
    k=k+1;
end

x_min = xk;
