include("../utils/string2function.jl")
include("../utils/getnumber.jl")


# this function calculate derivative of
# function "f" in the point "x".

function derivative(f, x, h=0.00000001)
	
	return (f(x + BigFloat(h)) - f(x))/ BigFloat(h)
end



function newton(f, start, n=10)
	
	xn = start
	for i in 1:n
		if f(xn) == 0
			return xn
		end
		
		xn = xn - (f(xn) / derivative(f,xn))
	end
	return xn
end

		

function run_newton()

	print("define your function : ")
	f = str2func(readline())
	print("starting point ? ")
	start = getFloat() 
	print("times ? ")
	times = getInt()
	root  = newton(f, start, times )
	print("root : ")
	println(round(root, digits=5))
	print("function value :")
	println(round(f(root), digits=10))
	
end

