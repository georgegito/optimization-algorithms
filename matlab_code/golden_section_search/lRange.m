function res = lRange(f)
    
    a = 2;
    b = 5;
    cpxls = [];
    lval = [];
    for l = 0.00025: 0.00005: 0.002
        temp = gldSecMeth(f, l, a, b, 0, '');
        cpxls = [cpxls, temp(3)];
        lval = [lval, l];
    end
    res = [cpxls; lval];
    figure;
    plot(lval, cpxls, 'linewidth', 2.5, 'color', [0.6350, 0.0780, 0.1840]);
    xlabel('l values', 'fontweight', 'bold');
    ylabel('complexity (calls of function f)', 'fontweight', 'bold');
   
end