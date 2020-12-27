

include("string2function.jl")
include("bisection.jl")

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
print("root: ")
println(root)

print("function value :")
println(f(root))
