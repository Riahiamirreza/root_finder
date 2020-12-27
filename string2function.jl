


function func_from_str(s)
	
	f = eval(Meta.parse("x ->" * s))
	return x -> Base.invokelatest(f, x)
end


function str2func(s)
	
	f = func_from_str(s)
	return f
end



