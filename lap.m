function [nghiem,solanlap] = lap(fp,a,b,saiso)
fp = str2func(['@(x)', fp]);
solanlap = 0;
x0 = (a+b)/2;
while (1)
    nghiem = fp(x0);
    e = abs(nghiem-x0);
    solanlap = solanlap+1;
    if e < saiso
        break;
    end
    x0 = nghiem;
end
end