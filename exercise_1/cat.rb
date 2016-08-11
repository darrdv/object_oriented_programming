class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at(a_time)
    case a_time
    when 0
        "#{a_time + 12} AM"
    when 1..11
        "#{a_time} AM"
    when 12
        "#{a_time} PM"
    when 13..23
      "#{a_time - 12} PM"
    else
      "12 AM"  #Default value in case someone enters a number not in range.
    end
  end

  def meow
    meal_time = eats_at(@meal_time)
    puts "My name is #{@name} and I eat #{@preferred_food} at #{meal_time}"
  end

end

tiger = Cat.new('Tiger', 'Tuna', 8)
otis = Cat.new('Otis', 'Chicken', 17)
tiger.meow
otis.meow
