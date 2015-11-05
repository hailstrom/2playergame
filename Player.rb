class Player #classes are caps first letter
  attr_accessor :name, :lives, :points
  
  def initialize(name)
    @name = name
    @lives = 3
    @points = 0 #growing where? In method increase_points below!!
  end

  # attr_reader :name
  # def name
  #   @name
  # end

  # attr_writer :name
  # def name=(value)
  #   @name = value
  # end
  
  # attr_accessor = attr_reader + attr_write

  def remove_life 
    @lives -= 1  # this is part of class and objects above
  end

  def increase_points 
    @points += 1 # without attr_accessor I would have to use self.points
  end

  def compare_points #put this where, in gameplay? yes because we must call this method
    #when @players.any? gets.chomp = point compare
    # puts "@name1 = name1.player.points, name1(player.points) 
    
    

    # @name1(self.points)or.self.points? nope we are looking for 
    # what points have been returned at each instance of the game
  end
end