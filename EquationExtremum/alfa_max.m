function [a1, a2, a3, k] = alfa_max(F, a0, delta)

a1 = a0;

a_delta = a1 + delta;
k=1;

if (F(a1) <= F(a_delta))
  a3 = a_delta;
  a2 = (a1+a3)/2;
  while (a1 ~= a2 && a1 ~= a2 && not(a1 < a2 && a2 < a3 && F(a1) > F(a2) && F(a3) > F(a2))) % check 3P
     k = k+1;
    a2 = (a1+a2)/2;
  end
else
  a2 = a_delta;
  a3 = a2 + delta;
  while (a1 ~= a2 && a1 ~= a2 && not(a1 < a2 && a2 < a3 && F(a1) > F(a2) && F(a3) > F(a2)))  % check 3P
       k = k+1;
    delta = 2*delta;
    a3 = a2 + delta;
  end
end
