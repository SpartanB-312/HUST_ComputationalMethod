function Newt_n(f_name, x0)
    x = x0
    xb = x + 1
    k = 0
    n = 50
    del_x = 0.01

    while abs(x - xb) > 1e-6
        k += 1
        xb = x
        if k >= n
            break
        end
        y = f_name(x)
        y_driv = (f_name(x + del_x) - y) / del_x
        x = xb - y / y_driv
        println("k=$(k), x=$(x), y=$(y), y_driv=$(y_driv)")
    end

    println("\nFinal answer=$(x)")
    return x
end