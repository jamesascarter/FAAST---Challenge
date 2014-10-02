require 'person'

describe Passenger do

	let(:passenger) { Passenger.new }
	let(:coach) 	{ double :coach }

	it "should have a balance of 10 when initialized" do
		expect(passenger.balance).to eq(10)
	end

	it 'can board a coach' do
		expect(coach).to receive(:embark).with(passenger)
		passenger.board(coach)
	end
end