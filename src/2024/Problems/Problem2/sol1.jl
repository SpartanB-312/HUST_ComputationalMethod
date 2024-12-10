include("trapezia.jl")
include("eqn1_a.jl")
include("eqn1_b.jl")
include("eqn1_c.jl")

t = zeros(3, 4)
for i in 1:4
    t[1, i] = trapezia(0, pi/4, 2^i, eqn1_a)
    t[2, i] = trapezia(0, 1, 2^i, eqn1_b)
    t[3, i] = trapezia(0, 1, 2^i, eqn1_c)
end