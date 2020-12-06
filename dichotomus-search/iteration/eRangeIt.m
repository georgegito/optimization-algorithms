function res = eRangeIt(f)
    
    a = 2;
    b = 5;
    l = 0.01;
    cpxls = [];
    eval = [];
    for e = 0.0005: 0.0001: 0.0045
        temp = dichMethIt(f, e, l, a, b, 0, '');
        cpxls = [cpxls, temp(3)];
        eval = [eval, e];
    end
    res = [cpxls; eval];
    figure;
    plot(eval, cpxls, 'linewidth', 2.5, 'color', [0.9290, 0.6940, 0.1250]);
    title('l = 0.01');
    xlabel('e values', 'fontweight', 'bold');
    ylabel('complexity (calls of function f)', 'fontweight', 'bold');
   
end