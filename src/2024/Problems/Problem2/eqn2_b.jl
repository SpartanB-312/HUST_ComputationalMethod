function eqn2_b(x)
    if x == 0
        return 1
    else
        return log.(1 + x) / x
    end
end