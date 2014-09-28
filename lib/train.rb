class Train

	DEFAULT_CAPACITY = 3

	def initialize
	@coaches = []
	@capacity = DEFAULT_CAPACITY
	end	

	def coaches
		@coaches = []
	end	

	def capacity
		@capacity = DEFAULT_CAPACITY
	end	

	def add_coaches(coach)
		@coaches << coach
	end
	
	def coach_count
		@coaches.count
	end	
end