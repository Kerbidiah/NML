#!/usr/bin/env ruby

class EMType
	#												inclusive bounds
	def initialize(name, fullAbrv, abrvFormal = "", lowerNM, upperNM)
		@name = name
		@fullAbrv = fullAbrv
		@abrvFormal = fullAbrv
		@abrvFormal = abrvFormal unless abrvFormal == ""
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
	def addInfAbv(abrvInformal)
		@abrvInformal = abrvInformal
	end
end
def includes(nm)
	i = 0
	while i <= (self.length - 1)
		put self[i].inspect if self[i].cover(nm)
		i += 1
	end
end

spectrum = Array.new
spectrum.append EMType.new("gamma", "Y", "γ", 0.001, 0.01)
spectrum.append EMType.new("xray", "HX", 0.01, 0.2)
spectrum.append EMType.new("xray", "SX", 0.2, 10)
spectrum.append EMType.new("ultraviolet", "EUV", 10, 124)
spectrum.append EMType.new("ultraviolet", "NUV", 124, 400)
spectrum.append EMType.new("visible", "V", 400, 700)
spectrum.append EMType.new("infared", "NIR", 700, 1400)
spectrum.append EMType.new("infared", "SWIR", 1400, 3000)
spectrum.append EMType.new("infared", "MIR", 3000, 8000)
spectrum.append EMType.new("infared", "LWIR", 8000, 15000)
spectrum.append EMType.new("infared", "FIR", 15000, 10**6)
spectrum.append EMType.new("microwaves", "EHF", 10**6, 10**7)
spectrum.append EMType.new("microwaves", "SHF", 10**7, 10**8)
spectrum.append EMType.new("microwaves", "UHF", 10**8, 10**9)
spectrum.append EMType.new("radio", "VHF", 10**9, 10**10)
spectrum.append EMType.new("radio", "HF", 10**10, 10**11)
spectrum.append EMType.new("radio", "MF", 10**11, 10**12)
spectrum.append EMType.new("radio", "LF", 10**12, 10**13)
spectrum.append EMType.new("radio", "VLF", 10**13, 10**14)
spectrum.append EMType.new("radio", "ULF", 10**14, 10**15)
spectrum.append EMType.new("radio", "SLF", 10**15, 10**16)
spectrum.append EMType.new("radio", "ELF", 10**16, 10**17)
i = 0
while i <= (spectrum.length - 1)
	puts spectrum[i].inspect
	i += 1
end

loop do
	spectrum.include(gets.to_f)
end