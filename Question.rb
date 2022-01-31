# have a anwser and must display the question and decided if the player answer right
class Question
  def initialize()
    @numbers = []
    @numbers.push(rand(1..20))
    @numbers.push(rand(1..20))
    @answer = @numbers[0] + @numbers[1]
  end

  def results(player_answer)
    return (@answer == player_answer)
  end

  def getQuestion
    return  "what does #{@numbers[0]} + #{@numbers[1]} equal?"
  end 
end