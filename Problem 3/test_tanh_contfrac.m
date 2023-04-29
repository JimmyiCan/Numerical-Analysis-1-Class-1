function test_tanh_contfrac()   
    for x = -pi/2 + pi/1000:pi/1000:pi/2 - pi/1000
        tol = 1e-6;
        tanh_comp = tanh_contfrac(x);
        tanh_true = tanh(x);
        diff = abs(tanh_comp - tanh_true);
        if (diff > tol)
            error("Error is too large!!!\N")
        end
    end 
end 