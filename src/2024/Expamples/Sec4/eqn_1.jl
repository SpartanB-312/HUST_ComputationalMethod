function eqn_1(x)
    y = (0.01 * x + 1) * sin(x) - (x - 0.01) * (x^2 + 1)^(-1) - 0.0096
    return y
end