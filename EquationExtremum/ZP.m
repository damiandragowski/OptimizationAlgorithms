function x_min = ZP(f, a, b, epsilon)
            

c=((sqrt(5)-1)/2);      
k=0;                    

x1=a+(1-c)*(b-a);       
x2=a+c*(b-a);

f_x1=f(x1);             
f_x2=f(x2);
plot(x1,f_x1,'--gs')
plot(x2,f_x2,'--gs')

while ((abs(b-a)>epsilon))
    k=k+1;
    if(f_x1<f_x2)
        b=x2;
        x2=x1;
        x1=a+(1-c)*(b-a);
        
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
    a
    b
    k=k+1;
end

k
if(f_x1<f_x2)
    x_min = x1;
else
	x_min = x2;
end