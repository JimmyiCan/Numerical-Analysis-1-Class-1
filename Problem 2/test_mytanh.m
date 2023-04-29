function test_mytanh()
    for x = -pi/2 + pi/1000:pi/1000:pi/2 - pi/1000
        tol = 8e-2;
        tanh_comp = mytanh(x);
        tanh_true = tanh(x);
        diff = abs(tanh_comp - tanh_true);
        if (diff > tol)
            fprintf('mytanh(x) cannot generate an accurate value of tanh(x) if x = %f\n',x)
        else
            fprintf('mytanh(x) generates an accurate value of tanh(x), mytanh(%f) = %f, tanh(%f) = %f\n',x,mytanh(x),x,tanh(x))
        end
     end
end 