x0 = -10 + (10+10)*rand(3,1)

options = optimset('GradObj','on');
[f_min_unc, val] = fminunc(@fun6_1, x0, options)
[f_min_search, val] = fminsearch(@fun6_1, x0)


[ xk, k, line ] = FR( @fun6_1, x0, 0.0001, 'parabolic');
disp 'minimum z FR'
xk
disp 'liczba iteracji'
k