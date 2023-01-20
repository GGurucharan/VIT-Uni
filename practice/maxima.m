syms x real

f = input('Enter function f(x):');
fx = diff(f,x);
c = solve(fx);
cmin = min(double(c));
cmax = max(double(c));
fplot(f,[cmin-2 cmax+2])
hold on

fxx = diff(fx,x);
for i = 1:1:size(c)
    T1 = subs(fxx,x,c(i));
    T2 = subs(f,x,c(i));

    if (double(T1)==0)
        sprintf("The point x is %d inflixion point",double(c(i)))
    else
        if (double(T1)<0)
            sprintf('The max pointx is %d',double(c(i)))
            sprintf('The value  of function %d',double(T2))
        else
            sprintf('max %d',double(c(i)))
            sprintf('value %d',double(T2))
        end
    end
    plot(double(c(i)),double(T2),'r*','markersize',15);
end
pause
h = fplot(fx,[cmin-2 cmax+2]);
set(h,'color','r')
hold on
pause
e = fplot(fxx,[cmin-4 cmax+4]);
set(e,'color','g')
hold off
