class Paperboy

  def initialize(name, side)
    @name = name
    @side = side
    @experience = 0 #num of papers delivered
    @earnings = 0
    @minimum = 50
    @quota = 0
  end

  def quota
    @quota
  end

  def get_quota(experience)
     @minimum + experience/2
  end

  def deliver(start_address, end_address)
    homes_delivered = (end_address - start_address)/ 2

    #allowing for start_address being larger than end_address
    @experience = homes_delivered.abs

    @quota = get_quota(@experience)
    @earnings = 0.25 * @experience

    if @experience > @quota
      difference = @experience - @quota
      over_quota = difference * 0.50
      @earnings = @earnings + over_quota
    elsif @experience < @quota
      @earnings = @earnings - 2
    end
  end

  def earnings
    @earnings
  end

  def report
    "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} dollars so far."
  end
end
