class Game
  def initialize
    @position_values = {:a1 => " ", :b1 => " ", :c1 => " ",
                        :a2 => " ", :b2 => " ", :c2 => " ",
                        :a3 => " ", :b3 => " ", :c3 => " "}
    @board = "
  #{@position_values[:a1]} | #{@position_values[:b1]} | #{@position_values[:c1]}\n
  -- --- --\n
  #{@position_values[:a2]} | #{@position_values[:b2]} | #{@position_values[:c2]}\n
  -- --- --\n
  #{@position_values[:a3]} | #{@position_values[:b3]} | #{@position_values[:c3]}\n"
  
  	# 8 possibilities
  	@winning_boards = [[:a1, :b1, :c1], # horizontal
                       [:a2, :b2, :c2],
                       [:a3, :b3, :c3],

                       [:a1, :a2, :a3], # vertical
                       [:b1, :b2, :b3],
                       [:c1, :c2, :c3],

                       [:a1, :b2, :c3], # diagonal
                       [:a3, :b2, :c1]]

  end

  def print_board
    puts @board
  end
  
  def take_turn
    puts "Where do you want to mark?\n"
    requested_move = gets.chomp.to_sym
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

player1 = Player.new("Diarmuid", "X")
