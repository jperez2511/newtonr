function y=newtonr(fun, x0, tol)
dfun=diff(sym(fun));
f=subs(fun, x0);
df=subs(dfun, x0);
c=1;
while abs(f)>tol
    c
    a=x0-f/df;
    f=subs(fun,a);
    df=subs(dfun,a);
    x0=a;
    c=c+1;
    
    vpa(a)
end