class Glass

  MILD = 50

  attr_accessor :inside, :temperature, :errors

  def initialize
    @inside      = Location.new
    @temperature = MILD
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
