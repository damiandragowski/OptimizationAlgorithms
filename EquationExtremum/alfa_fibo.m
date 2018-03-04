function [x_min k] = alfa_fibo(f, a, b, epsilon)


if nargin < 4
   epsilon = 0.000001 
end

delta1 = b-a;
% find N
i = 1
while ( delta1/epsilon  > fibonacci(i) )
    i = i + 1;
end
N=i

k=0; 
while ( k <= N-3 )
%while ((abs(deltaK)>2*epsilon) && (k<iter))
    c0 = fibonacci(N-1-k)/fibonacci(N-k);
    x1k = b - c0 * (b-a);
    x2k = a + c0 * (b-a);
    
    delta1 = delta1 * c0
    
        f_x1=f(x1k);
        f_x2=f(x2k);    
    if(f_x1<f_x2)
        b=x2k;
    else
        a=x1k;
    end    
    
    k=k+1;
end

x_min = x1k;