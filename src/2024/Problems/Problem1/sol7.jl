using Polynomials, TyPlot

x = [0, 0.2, 0.4, 0.6, 0.8, 1.0];
y = [0, 7.78, 10.68, 8.37, 3.97, 0];

# 多项式拟合
p = fit(x, y, 3)

# 打印拟合的多项式
println("拟合的多项式: ", p)

xi = -2:0.1:3;
yi = p.(xi)

plot(xi,yi)