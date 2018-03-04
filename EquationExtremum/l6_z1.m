x0 = -10 + (10+10)*rand(3,1)

options = optimset('GradObj','on');
[f_min_unc, val] = fminunc(@fun6_1, x0, options)
[f_min_search, val] = fminsearch(@fun6_1, x0)


