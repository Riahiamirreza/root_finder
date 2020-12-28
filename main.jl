

include("string2function.jl")
include("methods/bisection.jl")
include("methods/false_position.jl")


function getFloat()
	parse(Float64, readline())
end

function getInt()
	parse(Int64, readline())
end



print("function : ")
f = str2func(readline())

print("Start point:")
start = getFloat()
print("End point:")
fin   = getFloat()
print("Times ? ")
times = getInt()
root = bisection(f,start,fin,times)

print("root with bisection method: ")
println(root) 
print("function value :")
println(f(root))

root_ = false_position(f,start,fin,times)

print("root with false position method: ")
println(root_) 
print("function value :")
println(f(root_))
