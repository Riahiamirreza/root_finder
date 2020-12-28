

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
