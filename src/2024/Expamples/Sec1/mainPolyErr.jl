using TyPlot
using Polynomials

x = [1.1, 2.3, 5.1]
y = exp.(x/1.5) - 2*sin.(x)
plot(x, y, "o")
n = length(x) - 1
coeff = fit(x, y, n)
xp = 1.1:0.05:5.1;
yp = coeff.(xp);
hold("on")
plot(xp, yp, "r")
yh = exp.(xp/1.5) - 2*sin.(xp);
plot(xp, yh, "k")
xlabel("x")
ylabel("f(x), P(x), data points:o")