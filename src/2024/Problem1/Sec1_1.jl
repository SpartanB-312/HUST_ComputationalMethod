# langrange interp
function lagrange_interpolation(x, y, x_interp)
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

# main
# data points
x = [0, 0.4, 0.8, 1.2]
y = [1.0, 1.491, 2.225, 3.320]

# interp
x_interp = [0.2, 0.6, 1.0];
np = length(x_interp)

# calculate
y0 = zeros(np)
for i in 1:np
    y0[i] = exp(x_interp[i])
end
y_interp = lagrange_interpolation(x, y, x_interp)
error = y0 - y_interp;
println("插值结果: ", y_interp)
println("误差: ", error)