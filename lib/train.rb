class Train

	attr_reader :coaches

	def initialize
		@coaches = [Coach.new, Coach.new, Coach.new]
	end	
end