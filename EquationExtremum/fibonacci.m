function [ result ] = fibonacci( n )

if n==0||n==1
    result = n;

else
    result = fibonacci(n-2)+fibonacci(n-1);
end
end