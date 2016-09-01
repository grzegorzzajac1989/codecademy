#!/usr/bin/ruby

def alphabetize(arr, rev=false)
   arr.sort!
    if rev == true
        arr.reverse!
    else
        arr
    end
end

numbers = [3,2,4,5,1]
puts alphabetize(numbers, true)