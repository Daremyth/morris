require_relative 'board'

board = Board.new
while !board.is_full
	board.random_move
	board.pretty_print
end
board.pretty_print
