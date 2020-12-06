function res = fibMeth(f, e, l, a, b, flag, col)

    n = 0;
    while fib(n) < (b - a)/l
        n = n + 1;
    end
    alist = [a];
    blist = [b];
    x1 =  a + (fib(n - 2)/fib(n))*(b - a);
    x2 =  a + (fib(n - 1)/fib(n))*(b - a);
    temp1 = f(x1);
    temp2 = f(x2);
    cpx = 2; 
    for k = 1: 1: n - 2
        if temp1 > temp2
            anext = x1;
            bnext = b;
            x1next = x2;
            x2next = anext + (fib(n - k - 1)/fib(n-k))*(bnext - anext);
            a = anext;
            b = bnext;
            x1 = x1next;
            x2 = x2next;
            temp1 = temp2;
            temp2 = f(x2);
        else 
            anext = a;
            bnext = x2;
            x2next = x1;
            x1next = anext + (fib(n - k - 2)/fib(n - k))*(bnext - anext);
            a = anext;
            b = bnext;
            x1 = x1next;
            x2 = x2next;
            temp2 = temp1;
            temp1 = f(x1);
        end
        alist = [alist, a];
        blist = [blist, b];
        cpx = cpx + 1;
    end
    x2 = x1 + e;
    if temp1 > f(x2)
        a = x1;
    else
        b = x1;
    end
    alist = [alist, a];
    blist = [blist, b];
    cpx = cpx + 1;
    res = [a, b, cpx, n];
    if flag == 1
        plot(alist, 'linewidth', 2, 'color', col);
        hold on;
       	plot(blist, 'linewidth', 2, 'color', col);
    	hold on;
    end

end
