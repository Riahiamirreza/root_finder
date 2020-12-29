
function  bisection(f, start, fin, n)
	
	middle = 0
	for i in 1:n

		middle = (start + fin )/2

		if f(middle) ==  0
			return middle
		end


		if f(middle) * f(start) < 0
			fin = middle

		elseif f(middle) * f(fin)   < 0

			start = middle
		end
	end
	return middle
end

function run_bisection()
	
	print("your function : ")
	f = str2func(readline())
	print("start : ")
	s = getFloat()
	print("end   :")
	e = getFloat()
	print("times ? ")
	t = getInt()
	r = bisection(f,s,e,t)
	print("root :")
	println(r)
	print("function value :")
	println(f(r))
end

