include("lagrange.jl");

x = [2 4 6 8 10];
y = [5 7 9 11 13];
xi = [2.5 5 7.3 9.1];

yi = lagrange(x, y, xi)