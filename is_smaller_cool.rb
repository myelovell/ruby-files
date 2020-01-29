#2019-11-14, avsta:mning 3: skriva funktioner
puts "enter num 1"
num1 = gets.to_i

puts "enter num 2"
num2 = gets.to_i

def is_smaller(num1, num2)
    if num1 < num2
        return "true"
    else
        return "false"
    end
end

puts is_smaller(num1, num2)
