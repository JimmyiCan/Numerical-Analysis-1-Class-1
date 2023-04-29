function y = newtanh(x)
    if (abs(x) <= 1 - 1e-5)
        y = mytanh(x);
        return
    else
        a = zeros(1,10000);
        for i = 1:10000
            x = x/2;
            a(i) = x;
            if (x < 1 - 1e-5)
                break
            end
        end
       b = zeros(1,i+1);
        b(1) = x;
    for p = 2:i+1
        b(p) = 2*mytanh(b(p-1))/(1+mytanh(b(p-1))*mytanh(b(p-1)));
    end
        y = b(p);
        return
    end
end
