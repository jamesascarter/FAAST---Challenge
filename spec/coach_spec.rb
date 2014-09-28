require 'coach'

describe Coach do

	let(:coach) {Coach.new}
	let(:station) {double :station}
	let(:passenger) {double :passenger}

	it "should have a default capacity of 40" do
		expect(coach.capacity).to eq(40)
	end	

	it "should be able to add passengers to coach" do
		coach.embark(passenger)
		expect(coach.passenger_count).to eq(1)
	end
		
	it "should be remove passengers from the coach" do
		coach.embark(passenger)
		coach.leave(passenger)
		expect(coach.passenger_count).to eq(0)
	end

	it "should know when it is full" do
		40.times {coach.embark(passenger)}
		expect(coach.full?).to eq(true)
	end	

	it "should raise error when it is full" do
		40.times {coach.embark(passenger)}
		expect(lambda{coach.embark}).to raise_error("sorry the coach is full")
	end
end

