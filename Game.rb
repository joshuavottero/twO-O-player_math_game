class Game
  attr_reader :current_player, :players

  def initialize(player1, player2)
    @current_player = 1
    @players = []
    @players.push(player1)
    @players.push(player2)
  end

  def turn(question)
      askQuestion(question)
      puts "P1: #{@players[0].lives}/3 vs P2: #{@players[1].lives}/3"
      if (@players[@current_player - 1].lives != 0) 
        puts "----- NEW TURN -----"
      
      else 
        # current player losses and the otherPlayer wins
        other_player = other_player()
        puts "Player #{other_player} wins with a score of #{players[other_player -1].lives}/3"
        puts "----- GAME OVER -----"
        # return that game_over is true
        return true
      end
      # change to other player
      @current_player = other_player()
    # return game is not over
    return false
  end
  protected 

  def other_player()
    #swap players
    if (@current_player == 1) 
      return  2
    end
    return 1
  end

  def askQuestion(question)
    #get answer by player
    puts "player #{@current_player}: #{question.getQuestion}"
    answer = gets.chomp.to_i
    # check if player is right
    if (question.results(answer))
      # if right congrats player
      puts "player #{@current_player}: YES! You are correct."
    else
      # if wrong make current_player lose a life
      puts "player #{@current_player}: Seriously? No!"
      @players[@current_player - 1].loseLife()
    end
     
  end
    
end