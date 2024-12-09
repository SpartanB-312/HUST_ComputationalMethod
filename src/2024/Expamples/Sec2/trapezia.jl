function trapezia(a,b,n,f_name)
    h = (b-a)/n
    fa = f_name(a)
    fb = f_name(b)
    t1 = 0;
    x = zeros(1, n-1);
    for k = 1:n-1
        x[k] = a+k*h
        t1 += f_name(x[k])
    end
    return h*(fa+2*t1+fb)/2
end