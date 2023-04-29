function pell = PellNumbers(n)
    pell = zeros(n, 1);
    pell(1) = 0;
    pell(2) = 1;
    if (n <=2)
        pell = pell(1:n,1);
        return
    else
        for i = 3:1:n
            pell(i) = 2*pell(i-1) + pell(i-2);
        end
    end
end