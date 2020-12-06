function res = eRangeRec(f)
    
    a = 2;
    b = 5;
    l = 0.01;
    cpxls = [];
    eval = [];
    for e = 0.0005: 0.0001: 0.0045
        cpx = 0;
        temp = dichMethRec(f, e, l, a, b, cpx, [], [], 0);
        cpxls = [cpxls, temp(3)];
        eval = [eval, e];
    end
    res = [cpxls; eval];
    figure;
    plot(eval, cpxls, 'linewidth', 2.5);
    xlabel('e values', 'fontweight', 'bold');
    ylabel('complexity', 'fontweight', 'bold');
   
end