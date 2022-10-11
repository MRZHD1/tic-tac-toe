require './board.rb'
board = Board.new('X', 'O')
puts "Welcome to a game of tic-tac-toe!"
puts board.board
until board.check
  board.turn('X')
  if board.check
    exit
  end
  board.turn('O')
end