function res = derDechMeth(f, l, a, b, flag, col)

    cpx = 0;
    alist = [a];
    blist = [b];
    der = diff(f);
    while b - a > l
        x = (a + b)/2;
        temp = der(x);
        cpx = cpx + 1;
        if temp > 0 
            b = x;
            alist = [alist, a];
            blist = [blist, b];
        elseif temp < 0
            a = x;
            alist = [alist, a];
            blist = [blist, b];
        else
            a = x;
            b = x;
            alist = [alist, a];
            blist = [blist, b];
            break
        end
    end
    res = [a, b, cpx];
    if flag == 1
        plot(alist, 'linewidth', 2, 'color', col);
        hold on;
        plot(blist, 'linewidth', 2, 'color', col);
        hold on;
    end
    
end