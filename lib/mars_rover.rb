class MarsRover

  ORIGIN = [0,0]
  INITIAL_ORIENTATION = :North
  ONE_STEP_FORWARD = [0, 1]
  ONE_STEP_BACKWARD = [0,-1]
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
    @coordinates = [0,1] if command == :M
    @coordinates = [0,-1] if command == :B
    broadcast_position
  end

end