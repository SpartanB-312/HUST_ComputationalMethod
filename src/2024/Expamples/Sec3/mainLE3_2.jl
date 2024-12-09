using LinearAlgebra

A = [2 1 -3; -1 3 2; 3 1 -3]
b = [2; 0; 1]

lu_factorization = lu(A)

L = lu_factorization.L
U = lu_factorization.U
P = lu_factorization.P

y = L \ (P * b)
x = U \ y

println("解 x: ", x)