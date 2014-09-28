class Station

	def initialize
		@trains = []
	end	

	def passengers
		@passengers ||= []
	end	

	def trains
		@trains ||= []
	end	

	def coachpassengers
		@coachpasengers ||= []
	end

	def passenger_count
		passengers.count
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
		trains.count
	end	

	def leave(train)
		trains.delete(train)
	end	

	def get_on_coach(passenger)
		coachpassengers << passenger
		passengers.delete(passenger)
	end

end