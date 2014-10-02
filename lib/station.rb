class Station

	attr_accessor :trains, :passengers

	def initialize
		@trains = []
		@passengers = []
	end	

	def passenger_count
		@passengers.count
	end

	def touch_in(passenger)
		passengers << passenger
	end

	def touch_out(passenger)
		passengers.delete(passenger)
	end	

	def dock(train)
		trains << train
	end	

	def train_count
		@trains.count
	end	

	def leave(train)
		trains.delete(train)
	end	

end