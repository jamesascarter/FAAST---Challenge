class Coach


	DEFAULT_CAPACITY = 40

	def initialize
		@capacity = DEFAULT_CAPACITY
		@passengers = []
	end	

	def capacity
		@capacity
	end	

	def passengers
		@passengers = []
	end	

	def embark(passenger)
		@passengers << passenger
		raise "sorry the coach is full" if full?
	end

	def leave(passenger)
		passengers.delete(passenger)
	end	

	def passenger_count
		@passengers.count
	end

	def full?
		capacity == 40
	end	
end
