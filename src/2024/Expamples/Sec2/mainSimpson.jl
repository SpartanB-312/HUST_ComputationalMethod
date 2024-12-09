include("simpson.jl")
include("func_ts.jl")

t = simpson(0, 1, 4, func_ts)