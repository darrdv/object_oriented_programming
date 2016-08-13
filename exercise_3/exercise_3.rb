class Rover

  def initialize
    @location_x = 0
    @location_y = 0
    @direction = 0
  end

  def instructions(input)
    input.each_char do |i|
    if i == "L"
      turn("L")
    elsif i == "R"
      turn("R")
    elsif i == "M"
      move
    else
      return "Instruction not understood."
    end
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
    case rotation
    when  "L"
      if @direction == "N"
        @direction = "W"
      elsif @direction == "S"
        @direction = "E"
      elsif @direction == "W"
        @direction = "S"
      elsif @direction == "E"
        @direction = "N"
      end
    when "R"
      if @direction == "N"
        @direction = "E"
      elsif @direction == "S"
        @direction = "W"
      elsif @direction == "W"
        @direction = "N"
      elsif @direction == "E"
        @direction = "S"
      end
  end

  def show_position
    if @position_x.to_i > 9 || @position_y.to_i > 9
      return "Rover is out of bounds"
    elsif @position_x.to_i < 0 || @position_y.to_i < 0
      return "Rover is out of bounds"
    else
      return @position_x, @position_y, @direction
    end
  end

end
