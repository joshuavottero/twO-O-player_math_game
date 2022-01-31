# have 3 lives and a name they answer qustions and lose lives on false anwers 
# they lose at 0 lives
class Player
  attr_reader :lives
  def initialize()
    @lives = 3
  end

  def loseLife()
    @lives = @lives - 1
  end
end