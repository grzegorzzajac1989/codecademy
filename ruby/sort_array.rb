my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages, 1, 2]

puts my_array.select {|a| a.is_a? String}

symbol_filter = lambda {|x| x.is_a? Integer }
puts my_array.select(&symbol_filter)