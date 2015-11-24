position_values = {:a1 => "X", :b1 => "O", :c1 => "O",
                   :a2 => "X", :b2 => "X", :c2 => "O",
                   :a3 => "O", :b3 => "O", :c3 => "X"}

board = "
  #{position_values[:a1]} | #{position_values[:b1]} | #{position_values[:c1]}\n
  -- --- --\n
  #{position_values[:a2]} | #{position_values[:b2]} | #{position_values[:c2]}\n
  -- --- --\n
  #{position_values[:a3]} | #{position_values[:b3]} | #{position_values[:c3]}\n\n"

# 8 possibilities
winning_boards = [[:a1, :b1, :c1], # horizontal
                  [:a2, :b2, :c2],
                  [:a3, :b3, :c3],

                  [:a1, :a2, :a3], # vertical
                  [:b1, :b2, :b3],
                  [:c1, :c2, :c3],

                  [:a1, :b2, :c3], # diagonal
                  [:a3, :b2, :c1]]

puts board
