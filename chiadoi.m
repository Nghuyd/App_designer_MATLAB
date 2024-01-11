function [nghiem,solanlap] = chiadoi(f,a,b,saiso)
solanlap = 0;
e = b-a;
f = str2func(['@(x)', f]);
if(f(a)*f(b)>0)
    disp('Khong co khoang phan li');
    return
end
while (e>saiso)
    c = (a+b)/2;
    test = f(a)*f(c);
    if test < 0
        b = c;
    else
        a = c;
        e = b-a;
        if test == 0
            e = 0;
        end
    end
    solanlap = solanlap+1;
end
nghiem = a;
end