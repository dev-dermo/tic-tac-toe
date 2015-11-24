position_values = {:a1 => "x", :b1 => " ", :c1 => " ",
                   :a2 => " ", :b2 => "x", :c2 => " ",
                   :a3 => " ", :b3 => " ", :c3 => "x"}

board = "
  #{position_values[:a1]} | #{position_values[:b1]} | #{position_values[:c1]}\n
  -- --- --\n
  #{position_values[:a2]} | #{position_values[:b2]} | #{position_values[:c2]}\n
  -- --- --\n
  #{position_values[:a3]} | #{position_values[:b3]} | #{position_values[:c3]}\n\n"

puts board
