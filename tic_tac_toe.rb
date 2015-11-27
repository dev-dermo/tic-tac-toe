class Game
  def initialize
    @position_values = {:a1 => " ", :b1 => " ", :c1 => " ",
                        :a2 => " ", :b2 => " ", :c2 => " ",
                        :a3 => " ", :b3 => " ", :c3 => " "}
		# @board = 
  
  	# 8 possibilities
  	@winning_boards = [[:a1, :b1, :c1], # horizontal
                       [:a2, :b2, :c2],
                       [:a3, :b3, :c3],

                       [:a1, :a2, :a3], # vertical
                       [:b1, :b2, :b3],
                       [:c1, :c2, :c3],

                       [:a1, :b2, :c3], # diagonal
                       [:a3, :b2, :c1]]
    @turns_taken = 0
  end
  
  def print_board
		puts "
  #{@position_values[:a1]} | #{@position_values[:b1]} | #{@position_values[:c1]}
  --+---+--
  #{@position_values[:a2]} | #{@position_values[:b2]} | #{@position_values[:c2]}
  --+---+--
  #{@position_values[:a3]} | #{@position_values[:b3]} | #{@position_values[:c3]}\n\n"
  end
  
  def take_turn
  	print_board
    puts "Where do you want to mark?\n"
    requested_move = gets.chomp.to_sym
		@position_values[requested_move] = "X"
		@turns_taken += 1
		puts @position_values[:a1]
		print_board
  end

  def position_occupied?(symbol)
    if @position_values[symbol.to_sym] == " "
      false
    else
      true
    end
  end
end

class Player
  def initialize(name, marker)
    @name = name
    @marker = marker
  end
end

our_game = Game.new

our_game.take_turn
