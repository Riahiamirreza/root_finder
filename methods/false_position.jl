include("../utils/string2function.jl")
include("../utils/getnumber.jl")

function false_position(f, start, fin, n=5)
	
	np = 0
	if f(start) == 0
		return start
	elseif f(fin) == 0
		return fin
	end

	res = 0

	for i in 1:n
		fin = (start * f(fin) - fin * f(start))/(f(fin) - f(start)) 
		if !isnan(fin)
			res = fin
		end
		np  = start 
		start = fin
		fin = np
	end
	return res
end


function run_false_position()
	
	print("your function : ")
	f = str2func(readline())
	print("start : ")
	s = getFloat()
	print("end   :")
	e = getFloat()
	print("times ? ")
	t = getInt()
	r = false_position(f,s,e,t)
	print("root :")
	println(r)
	print("function value :")
	println(f(r))
end

