

include("utils/string2function.jl")
include("utils/getnumber.jl")
include("methods/bisection.jl")
include("methods/false_position.jl")
include("methods/newton.jl")





println("Choose method:")
println("1)newton")
println("2)bisection")
println("3)false position")

a = getInt()

if a == 1 
	run_newton()
elseif a == 2
	run_bisection()
elseif a == 3
	run_false_position()
end
	

	

	

