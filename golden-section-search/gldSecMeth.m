function res = gldSecMeth(f, l, a, b, flag, col)

    c = 0.618;
    alist = [a];
    blist = [b];
    x1 = a + (1 - c)*(b - a);
    x2 = a + c*(b -a);
    temp1 = f(x1);
    temp2 = f(x2);
    cpx = 2;
    while b - a > l
        if temp1 > temp2
            a = x1;
            x1 = x2;
            x2 = a + c*(b - a);
            temp1 = temp2;
            temp2 = f(x2);
        else           
            b = x2;
            x2 = x1;
            x1 = a + (1 - c)*(b - a);
            temp2 = temp1;
            temp1 = f(x1);
        end
        alist = [alist, a];
        blist = [blist, b];
        cpx = cpx + 1;
    end
    res = [a, b, cpx];
    if flag == 1
        plot(alist, 'linewidth', 2, 'color', col);
        hold on;
        plot(blist, 'linewidth', 2, 'color', col);
        hold on;
    end
    
end