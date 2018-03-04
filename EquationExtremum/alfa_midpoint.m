function [x_min k] = alfa_midpoint(f, a, b, d0, epsilon)
                 
k=0; 


while (abs(b-a) > epsilon  )
    k=k+1;
    z=(a+b)/2; 
    
    [fval grad]=f(z);             
    fzprim = grad'*d0;
    
    if ( fzprim == 0 )
        break;
    end
    if(fzprim > 0)
        b = z;
    else
        a = z;
    end
    
end

x_min = z;