my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages, 1, 2]

symbol_filter = lambda {|x| x.is_a? Integer }

my_array.select(&symbol_filter)