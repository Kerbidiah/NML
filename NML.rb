class EMType
	#					   inclusive bounds
	def initialize(name, abrv, lowerNM, upperNM)
		@name = name
		@abrv = abrv
		@lo = lowerNM
		@hi = upperNM
	end
	def cover(nm)
		if @lo <= nm and nm <= @hi
			return true
		elsif !(@lo <= nm and nm <= @hi)
			return false
		end
	end
end

