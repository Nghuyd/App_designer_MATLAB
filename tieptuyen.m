function [nghiem,solanlap] = tieptuyen(f,a,b,saiso)
f = str2func(['@(x)', f]);
solanlap = 0;
syms x;
fd1 = str2func(['@(x)' char(diff(f(x)))]);
fd2 = str2func(['@(x)' char(diff(fd1(x)))]);
x0 = a;
cond = f(x0)*fd2(x0);
if cond < 0
    x0 = (x0+b)/2;
end
while (1)
    nghiem = x0 - f(x0)/fd1(x0);
    e = abs(nghiem-x0);
    solanlap = solanlap +1;
    if e < saiso
        break;
    end
    x0 = nghiem;
end
end