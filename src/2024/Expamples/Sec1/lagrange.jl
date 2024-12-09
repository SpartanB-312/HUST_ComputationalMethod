function lagrange(x, y, x_interp)
    n = length(x)
    np = length(x_interp)
    y_interp = zeros(np)

    for npi in 1:np
        for i in 1:n
            L = 1.0
            for j in 1:n
                if i != j
                    L *= (x_interp[npi] - x[j]) / (x[i] - x[j])
                end
            end
            y_interp[npi] += L * y[i]
        end
    end
    return y_interp
end