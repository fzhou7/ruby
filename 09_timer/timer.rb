class Timer
	attr_accessor :seconds

	def initialize()
		@seconds = 0
	end

	def time_string
    	"#{"%.2i" %(hour=seconds/3600)}:#{"%.2i" %(minute=(seconds-hour*3600)/60)}:#{"%.2i" %(seconds-hour*3600-minute*60)}"
    end
end