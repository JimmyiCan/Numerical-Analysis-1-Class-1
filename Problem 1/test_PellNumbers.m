function test_PellNumbers()
    for n = 3:100
        pell = PellNumbers(n);
        a = pell(n);
        b = pell(n-1);
        c = pell(n-2);
        if a == 2*b + c
            fprintf('%d, %d and %d satisfy the recurrence relation.\n',a,b,c)
        else
            error("%d, %d and %d satisfy the recurrence relation.\n",a,b,c)
        end
    end
end
