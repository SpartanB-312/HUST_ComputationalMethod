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
y_interp = lagrange(x, y, x_interp)
error = y0 - y_interp;
println("插值结果: ", y_interp)
println("误差: ", error)