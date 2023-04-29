function tanhofx = mytanh(x)
    y = 1;
    c = 6;
    tanhoverxm1 = 0;
    if (abs(x) >= pi/2)
        disp('x is outside the convergence domain of tanh(x)')
    else
        for n = 2:17
            b = mybernoulli(2*n);
            y = y*x*x;
            c_1 = 16/((2*n)*(2*n - 1));
            c_2 = 4/((2*n)*(2*n - 1));
            c = (c_1 - c_2)*c;
            t = c*b*y;
            tanhoverxm1 = t + tanhoverxm1;
            tanhofx = x*(1 + tanhoverxm1);
        end
    end
end
