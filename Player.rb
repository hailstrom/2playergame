class Player #classes are caps first letter
  attr_accessor :name, :lives
  def initialize(name)
    @name = name
    @lives = 3

  end

  # def name
  #   @name
  # end

  # def name=(name)
  #   @name = name
  # end
end