function res = lRangeRec(f)
    
    a = 2;
    b = 5;
    e = 0.001;
    cpxls = [];
    lval = [];
    for l = 0.0025: 0.0005: 0.02
        cpx = 0;
        temp = dichMethRec(f, e, l, a, b, cpx, [], [], 0);
        cpxls = [cpxls, temp(3)];
        lval = [lval, l];
    end
    res = [cpxls; lval];
    figure;
    plot(lval, cpxls, 'linewidth', 2.5);
    xlabel('l values', 'fontweight', 'bold');
    ylabel('complexity', 'fontweight', 'bold');
   
end