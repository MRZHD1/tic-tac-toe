require './board.rb'
game = Game.new('X', 'O')

puts "Welcome to a game of tic-tac-toe!"
puts game.board

until game.check

  game.turn('X')

  if game.check
    exit
  end

  game.turn('O')

end
