using Polynomials

x = [1.1, 2.3, 3.9, 5.1]
y = [3.887, 4.276, 4.681, 2.117]

# 多项式拟合
p = fit(x, y, length(x)-1)

# 打印拟合的多项式
println("拟合的多项式: ", p)

xi = [1.8 1.95 2.93 4.8];
yi = p.(xi)