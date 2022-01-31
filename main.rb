require "./Player.rb"
require "./Question.rb"
require "./Game.rb"

player1 = Player.new()
player2 = Player.new()
game = Game.new(player1, player2)

game_over = false
# go till the game is over
while game_over == false

  game_over = game.turn(Question.new())
 
end
puts "Good bye!"