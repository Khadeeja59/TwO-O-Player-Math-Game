class Player
  attr_accessor :id, :lives

  def initialize(id, lives=3)
    @id = id
    @lives = lives
  end

  def lose_life
    @lives -=1
  end
end
