function yn = tanh_contfrac(x)
a = x*x; 
b0 = 1; 
Ajm2 = 1; 
Bjm2 = 0; 
Ajm1 = b0; 
Bjm1 = 1;
ynm1 = 1;
tol = 1e-8;
if (abs(x) >= pi/2)
    fprintf('x is outside the input domain\n')
else
    for j = 1:500
        b = b0 + 2*j;
        Aj = b*Ajm1 + a*Ajm2;
        Bj = b*Bjm1 + a*Bjm2;
        yn = Aj/Bj;
        diff = x/(yn) - x/ynm1;

        if (abs(diff) < tol)
            fprintf('tanh_contdfrac converged in %d iterations, tanh_contfrac(%f) = %f\n',j,x,x/yn)
            yn = x/yn;
            return
        end

        ynm1 = yn;
        Ajm2 = Ajm1; 
        Bjm2 = Bjm1; 
        Ajm1 = Aj; 
        Bjm1 = Bj;
    end
end
end