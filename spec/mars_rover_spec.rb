require 'mars_rover'

describe MarsRover do
  let(:mars_rover) {MarsRover.new}
  INITIAL_POSITION = [0,0]

    it 'starts at the initial position' do
      mars_rover = MarsRover.new
      expect(mars_rover.broadcast_position).to eq INITIAL_POSITION
    end

    it 'moves forward' do
      ONE_STEP_FORWARD = [0,1]
      mars_rover.receive_commands([:f])
      expect(mars_rover.broadcast_position).to eq(ONE_STEP_FORWARD)
    end

    it 'moves backward' do
      ONE_STEP_BACKWORD = [0,-1]
      mars_rover.receive_commands([:b])
      expect(mars_rover.broadcast_position).to eq(ONE_STEP_BACKWORD)
    end

    it 'is initially facing north' do
      INITIAL_DIRECTION = :north
      expect(mars_rover.broadcast_orientation).to eq(INITIAL_DIRECTION)
    end

    it 'turns left' do
      LEFT = :west
      mars_rover.receive_commands([:left])
      expect(mars_rover.broadcast_orientation).to eq(LEFT)
    end

    it 'allows a change in direction' do
      LEFT = :west
      mars_rover.receive_commands([:left, :left])
      expect(mars_rover.broadcast_orientation).to eq(:south)
      # mars_rover.receive_command[:left, :left].to eq(North)
    end



end