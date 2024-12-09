using LinearAlgebra

A = [1 1; 1 1.0001];

condition_number = cond(A)
println("矩阵的条件数: ", condition_number)