require 'matrix'

class Board
	
	def initialize
		@board_internal = [['','',''],['','',''],['','','']]
		@turn = 'x'
	end

	def print
		p @board_internal.to_s
	end

	def random_move
		row = rand(3)
		col = rand(3)
		while @board_internal[row][col] != '' do
			row = rand(3)
			col = rand(3)
		end
		@board_internal[row][col] = @turn
		if @turn == 'x'
			@turn='o'
		else
			@turn='x'
		end
	end

	def is_full
		for r in 0..2
			for c in 0..2
				if @board_internal[r][c] == ''
					return false
				end
			end
		end
		return true
	end			

	def pretty_print
		@board_internal.to_a.each {|r| puts r.inspect}
	end
end
