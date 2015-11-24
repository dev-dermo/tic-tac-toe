class Player
  def initialize(name, marker)
    @name = name
    @marker = marker
  end

  def take_turn
    puts "Where do you want to mark?\n"
    requested_move = gets.chomp
    puts requested_move.to_sym.inspect
  end

  def position_occupied?
  end
end

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
  end

  def print_board
    puts @board
  end

  def win_condition?
    # 8 possibilities
    winning_boards = [[:a1, :b1, :c1], # horizontal
                      [:a2, :b2, :c2],
                      [:a3, :b3, :c3],

                      [:a1, :a2, :a3], # vertical
                      [:b1, :b2, :b3],
                      [:c1, :c2, :c3],

                      [:a1, :b2, :c3], # diagonal
                      [:a3, :b2, :c1]]
  end

  def possible_move?
  end
end

player1 = Player.new("Diarmuid", "X")
player2 = Player.new("Christina", "O")

our_game = Game.new
our_game.print_board

player1.take_turn
