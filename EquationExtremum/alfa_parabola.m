function [x_min k] = alfa_parabola(f, alfa1,alfa2,alfa3, d0, epsilon)

if nargin < 4
   epsilon = 0.000001
end


k=0;
while ( abs(alfa3-alfa1) > epsilon )
    f1=f(alfa1);
    f2=f(alfa2);
    f3=f(alfa3);
    alfaPrim=1/2*((alfa2^2-alfa3^2)*f1+(alfa3^2-alfa1^2)*f2+(alfa1^2-alfa2^2)*f3)/((alfa2-alfa3)*f1+(alfa3-alfa1)*f2+(alfa1-alfa2)*f3);
    f4=f(alfaPrim);
    alfa1
    alfa2
    alfa3
    alfaPrim
            if ( alfa1  < alfaPrim && alfaPrim < alfa2 && alfa2 < alfa3 )
                if ( f4 <= f2 )
                    alfa3= alfa2;                    
                    alfa2= alfaPrim;
                else
                    alfa1 = alfaPrim;
                end
            else
                if ( alfa1 < alfa2 && alfa2 < alfaPrim && alfaPrim < alfa3 )
                    if ( f2 >= f4 )
                        alfa1 = alfa2;
                        alfa2 = alfaPrim;
                    else
                        alfa3 = alfaPrim;
                    end
                end
            end
    k = k+1
end

x_min = alfa2;