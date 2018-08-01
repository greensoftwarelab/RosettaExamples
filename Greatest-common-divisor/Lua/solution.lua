function gcd(a,b)
	if b ~= 0 then
		return gcd(b, a % b)
	else
		return math.abs(a)
	end
end

function demo(a,b)
	print("GCD of 2147483646,1143271457  is " .. gcd(a, b))
end

demo(2147483646,1143271457)
