function res = dichMethRec(f, e, l, a, b, cpx, alist, blist, flag)

    if b - a < l
        if flag == 1
            figure;
            plot(alist, 'linewidth', 2);
            hold on;
            plot(blist, 'linewidth', 2);
            legend('a', 'b');
            xlabel('k values', 'fontweight', 'bold');
            hold off;
        end
        res = [a, b, cpx];
    else
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
        res = dichMethRec(f, e, l, a, b, cpx, alist, blist, flag);
    end
    
end
