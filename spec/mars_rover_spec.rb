require 'mars_rover'

describe MarsRover do
  let(:mars_rover) {MarsRover.new}

    it 'starts at 0,0' do
      expect(mars_rover.broadcast_position).to eq([0,0])
    end

    it 'moves forward' do
      ONE_STEP_FORWARD = [0,1]
      mars_rover.receive_commands(:M)
      expect(mars_rover.broadcast_position).to eq(ONE_STEP_FORWARD)
    end

    it 'gives the position it is facing' do
      INITAL_ORIENTATION = :North
      expect(mars_rover.broadcast_orientation).to eq(INITAL_ORIENTATION)
    end

    it 'turns left' do
      LEFT = :west
      mars_rover.receive_commands(:left)
      expect(mars_rover.broadcast_orientation).to eq(LEFT)
    end

    it 'turns right' do
      RIGHT = :east
      mars_rover.receive_commands(:right)
      expect(mars_rover.broadcast_orientation).to eq(RIGHT)
    end

    it 'allows a change in direction' do
      LEFT = :west
      mars_rover.receive_commands[:left, :left]
      expect(mars_rover.broadcast_orientation).to eq(South)
      mars_rover.receive_command[:left, :left].to eq(North)
    end



end