require 'mars_rover'

describe MarsRover do
    it 'starts at 0,0' do
      mars_rover = MarsRover.new
      expect(mars_rover.broadcast_position).to eq([0,0])
    end

    it 'moves forward' do
      ONE_STEP_FORWARD = [0,1]
      mars_rover = MarsRover.new
      mars_rover.receive_commands(:M)
      expect(mars_rover.broadcast_position).to eq(ONE_STEP_FORWARD)
    end

    it 'moves backword' do
      ONE_STEP_SOUTH = [0,-1]
      mars_rover = MarsRover.new
      mars_rover.receive_commands(:B)
      expect(mars_rover.broadcast_position).to eq(ONE_STEP_SOUTH)
    end

    it 'gives the position it is facing' do
      INITAL_ORIENTATION = :North
      mars_rover = MarsRover.new
      expect(mars_rover.broadcast_orientation).to eq(INITAL_ORIENTATION)
    end

end