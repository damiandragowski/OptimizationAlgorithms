function [x_min k] = alfa_ZP(f, a, b, epsilon, iter)


if nargin < 5
  iter = 100;
end
if nargin < 4
   epsilon = 0.000001 
end

c=((sqrt(5)-1)/2);      
k=0;                    

x1=b-c*(b-a)
x2=a+c*(b-a);

f_x1=f(x1);             
f_x2=f(x2);

%plot(x1,f_x1,'--gs')
%plot(x2,f_x2,'--gs')

while ((abs(b-a)>epsilon) && (k<iter))
    if(f_x1<f_x2)
        b=x2;
        x2=x1;
        x1=b-c*(b-a);
        
        f_x1=f(x1);
        f_x2=f(x2);
        %plot(x1,f_x1,'--gs');          
    else
        a=x1;
        x1=x2;
        x2=a+c*(b-a);
        
        f_x1=f(x1);
        f_x2=f(x2);
        %plot(x2,f_x2,'--gs');  
    end
    
    k=k+1;
end


if(f_x1<f_x2)
    sprintf('x_min=%f', x1);
    sprintf('f(x_min)=%f ', f_x1);
    x_min = x1;
else
    sprintf('x_min=%f', x2);
    sprintf('f(x_min)=%f ', f_x2);
    x_min = x1;
end