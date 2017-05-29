class Glass

  Hot = 80

  attr_accessor :inside, :temperature, :errors

  def initialize
    @inside      = Location.new
    @temperature = Hot
    @errors      = []
  end

  def ingredients
    @inside.contents.map(&:name)
  end

  def errors?
    @errors.size > 0
  end

  def valid?
    @errors.size == 0
  end

end
