class EMType
	#									inclusive bounds
	def initialize(name, div, abrv, lowerNM, upperNM)
		@name = name
		@div = div
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

