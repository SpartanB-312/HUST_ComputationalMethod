using TyPlot

x = 0:0.01:10

y1 = (0.01 .* x .+ 1) .* sin.(x)
y2 = (x .- 0.01) ./ (x .^ 2 .+ 1) .- 0.0096

plot(x, y1)
hold("on")
plot(x, y2)
xlabel("x-axis")
ylabel("y-axis")
title("Plot of y1 and y2")
#=
then input
    Newt_n(eqn_1,3)
    Newt_n(eqn_1,6.5)
    Newt_n(eqn_1,9.5)
=#