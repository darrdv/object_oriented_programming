class Rover
  def initialize(x,y,d)
    @position_x = x
    @position_y = y
    @direction = d
  end

  def enter_plateau_size(x, y)
    @plateau_size_x = x
    @plateau_size_y = y
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
  end

  def move
    if @direction == 'N'
      @position_y += 1
    elsif @direction == 'S'
      @position_y -= 1
    elsif @direction == 'W'
      @position_x -= 1
    elsif @direction == 'E'
      @position_x += 1
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
  end

  def show_position
    if @position_x.to_i > @plateau_size_x || @position_y.to_i > @plateau_size_y
      return "Rover is out of bounds"
    elsif @position_x.to_i < 0 || @position_y.to_i < 0
      return "Rover is out of bounds"
    else
      return "#{@position_x} #{@position_y} #{@direction}"
    end
  end

end

#rover1 = Rover.new(1, 2, "N")
#rover1.enter_plateau_size(5, 5)
#rover1.instructions('LMLMLMLMM')
#rover1.show_position
#rover2 = Rover.new(3,3,"E")
#rover2.enter_plateau_size(5,5)
#rover2.instructions(MMRMMRMRRM)
#rover1.show_position
