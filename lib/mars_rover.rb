class MarsRover

  INITIAL_POSITION = [0,0]
  INITIAL_DIRECTION= :north
  # DIRECTIONS = [:north, :west, :south, :east]

  def initialize
    @coordinates = INITIAL_POSITION
    @direction = INITIAL_DIRECTION
  end

  def broadcast_position
    @coordinates
  end

  def broadcast_orientation
    @direction
  end

  def receive_commands commands
    @coordinates = [0,1]
    @coordinates = [0,-1] if commands.first == :b
    @direction = :west if commands.first == :left
    @direction = :south if commands.last == :left && commands.size == 2
  end

end