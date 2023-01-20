syms x

f = input('Enter function: ');
x1 = input('Enter point: ');
D = [x1-2 x1+2];
fplot(y,D)
hold on

yd = diff(f,x);
slope = subs(yd,x,x1);
y1 = subs(y,x,x1);
plot(x1,y1,'kO')

Tgt_line = slope*(x-x1)+y1;
h = fplot(Tgt_line,D);
set(h,'color','r');


