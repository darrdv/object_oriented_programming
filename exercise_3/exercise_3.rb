class Rover

  def initialize
    @location_x = 0
    @location_y = 0
    @x_max = 0
    @y_max = 0
    @direction = ''
  end

  def read_instruction
    #should accept an instruction and decide whether to tell the rover to move or turn.
    #It simply delegates to more specific behaviour.

    puts "What is the plateau size? (Enter in the format of X Y) "
    size = gets.chomp
    puts "Enter start position (X Y) and direction header (N,S,E,W) "
    starter_heading = gets.chomp
    








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






end
