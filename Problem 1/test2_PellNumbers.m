function test2_PellNumbers()
    for n =1:1000
    X = PellNumbers(n);
    tol = 1e-6;
        if (abs(X(n) - (((1+sqrt(2))^(n-1))-((1-sqrt(2))^(n-1)))/(2*sqrt(2))) < tol)
            disp('Correct')
        else
            error("The Binet-type formula is not satisfied when n = %d.\n",n)
        end
    end
end