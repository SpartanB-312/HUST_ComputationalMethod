function simpson(a,b,n,f_name)
    h = (b-a)/n
    x = zeros(1,2*n)
    for k = 1:2*n
        x[k] = a + k*h/2;
    end
    fa = f_name(a)
    fb = f_name(b)
    s1 = 0;
    s2 = 0;
    for k = 1:n
        s1 += f_name(x[2*k-1])
        s2 += f_name(x[2*k])
    end
    return h*(0.5*(fa - fb) + 2*s1 + s2)/3
end