class Rover

  def initialize(location_x, location_y, direction)
    @location_x = location_x
    @location_y = location_y
    @direction = direction
  end

  def read_instruction

  end

  def move

    if @direction == 'N'
      @location_y += 1
    elseif @direction == 'S'
      @location_y -= 1
    elseif @direction == 'W'
      @location_x -= 1
    elseif @direcction == 'E'
      @location_x += 1
    end

  end

  def turn(rotation)
  when  "L"
    if @direction == "N"
      @direction = "W"

  end


end
