class Paperboy()
  #attr_accessor quota

  def initialize(name, side)
    @name = name
    @side = side
    @experience = 0 #num of papers delivered
    @minimum = 50
    @earnings = 0
    @quota = 0
  end

  def quota
    @quota
  end

  def quota(experience)
     @minimum + experience/2
  end

  def deliver(start_address, end_address)
    @experience = (end_address - start_address)/ 2
    @quota = quota(@experience)
    @earnings = 0.25* @experience

    if @experience > @quota
      difference = @experience - @quota
      over_quota = difference * 0.50
      @earnings = @earnings + over_quota
    elsif @experience < @quota
      @earnings = @earnings - $2.00
    end
  end

  def report
    "I'm #{@name}, I've delivered #{@experience} papers and I've earned
    $#{@earnings} dollars so far."
  end

end
