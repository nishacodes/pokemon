class Pokemon
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def say_name
    name
  end

end