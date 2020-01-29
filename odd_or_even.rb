#2019-11-07, odd or even

puts "return if your number is odd or even"
puts "enter number"
input = gets.to_i

def odd_or_even(input)
    if (input % 2) == 0
        return "even"
    else
        return "odd"
    end
end

puts odd_or_even(input)
