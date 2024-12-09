using Interpolations
using TyPlot

x = [1, 3, 5.2, 8, 10, 13]
y = [4, 6, 3, 8, 9.1, -4]

itp = interpolate((x,), y, Gridded(Linear()))

x_interp = [4, 5.5, 11.7]

y_interp = itp.(x_interp)

scatter(x, y)
hold("on")
plot(x_interp, y_interp)