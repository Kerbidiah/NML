class EMType
	#									inclusive bounds
	def initialize(name, fullAbrv = "", abrvFormal, lowerNM, upperNM)
		@name = name
		if fullAbrv == ""
			@fullAbrv = fullAbrv
		elsif fullAbrv != ""
			@fullAbrv = fullAbrv
		end
		@abrvFormal = abrvFormal
		@lo = lowerNM.to_f
		@hi = upperNM.to_f
	end
	def cover(nm)
		if @lo <= nm and nm <= @hi
			return true
		elsif !(@lo <= nm and nm <= @hi)
			return false
		end
	end
end

spectrum = Array.new
spectrum.append EMType.new("gamma", "γ", 0.001, 0.01)
spectrum.append EMType.new("xray", "HX", "X", 0.01, 0.2)
spectrum.append EMType.new("xray", "SX", "X", 0.2, 10)
spectrum.append EMType.new("ultraviolet", "EUV", "UV", 10, 124)
spectrum.append EMType.new("ultraviolet", "NUV", "UV", 124, 400)
spectrum.append EMType.new("visible", "V", 400, 700)
spectrum.append EMType.new("infared", "NIR", "IR", 700, 1400)
spectrum.append EMType.new("infared", "SWIR", "IR", 1400, 3000)
spectrum.append EMType.new("infared", "MIR", "IR", 3000, 8000)
spectrum.append EMType.new("infared", "LWIR", "IR", 8000, 15000)
spectrum.append EMType.new("infared", "FIR", "IR", 15000, 1000000)
spectrum.append EMType.new("microwaves", "EHF", 1000000, 10000000)
spectrum.append EMType.new("microwaves", "SHF", 10000000, 10**8)
spectrum.append EMType.new("microwaves", "UHF", 10**8, 10**9)
spectrum.append EMType.new("radio", "VHF", 10**9, 10**10)
spectrum.append EMType.new("radio", "HF", 10**10, 10**11)
spectrum.append EMType.new("radio", "MF", 10**11, 10**12)

