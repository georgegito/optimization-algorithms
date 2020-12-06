function res = dichMethIt(f, e, l, a, b, flag, col)

    cpx = 0;
    alist = [a];
    blist = [b];
    while b - a > l
        x1 = (a + b)/2 - e;
        x2 = (a+b)/2 + e;
        if f(x1) < f(x2)
            b = x2;
        else
            a = x1;
        end
        cpx = cpx + 2;
        alist = [alist, a];
        blist = [blist, b];
    end
    res = [a, b, cpx];
    if flag == 1
        plot(alist, 'linewidth', 2, 'color', col);
        hold on;
        plot(blist, 'linewidth', 2, 'color', col);
        hold on;
    end
    
end

