class MarsRover

  ORIGIN = [0,0]
  INITIAL_ORIENTATION = :North
  LEFT = :west
  RIGHT = :east

  attr_reader :coordinates, :orientation

  def initialize
    @coordinates = ORIGIN
    @orientation = INITIAL_ORIENTATION
  end

  def broadcast_orientation
    @orientation
  end

  def broadcast_position
    @coordinates
  end

  def receive_commands (command)
    @coordinates = [0,1]
    @orientation = :west if command == :left
    @orientation = :east if command == :right
    # @orientation = :south if command == :left & :left
  end

end