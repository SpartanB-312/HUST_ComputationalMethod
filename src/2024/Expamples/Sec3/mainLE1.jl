using LinearAlgebra

B = [0 0.1 0.2; 0.1 0 0.2; 0.2 0.2 0]

l, x = eigen(B)
println("特征值: ", l)
println("特征向量: ", x)

nB1 = norm(B, 1);
nB2 = norm(B, 2);
nBInf = norm(B, Inf);

println("1-: ", nB1)
println("2-: ", nB2)
println("Inf-: ", nBInf)