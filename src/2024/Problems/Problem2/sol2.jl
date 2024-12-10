include("simpson.jl")
include("eqn2_a.jl")
include("eqn2_b.jl")
include("eqn2_c.jl")

t = zeros(3, 4)
for i in 1:4
    t[1, i] = simpson(0, pi, 2^(i+1), eqn2_a)
    t[2, i] = simpson(0, 2, 2^(i+1), eqn2_b)
    t[3, i] = simpson(0, pi/2, 2^(i+1), eqn2_c)
end