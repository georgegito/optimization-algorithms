syms x;
f(x) = (x - 2)^2 - sin(x + 3);

eRangeRec(f);
lRangeRec(f);

alist = [2];
blist = [5];
dichMethRec(f, 0.001,  0.01, 2, 5, 0, alist, blist, 1)
