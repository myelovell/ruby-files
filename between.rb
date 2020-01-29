# 2019-10-13, is num3 betweem num1 and num2
puts "is num3 between num1 and num2"

puts "enter num 1"
num1 = gets.to_i

puts "enter num 2"
num2 = gets.to_i

puts "enter num 3"
num3 = gets.to_i

def between(num1, num2, num3)
    if num3 <= num2
        if num3 >= num1
            return "true"
        else
            return "false"
        end
    else
        return "false"
    end
end

puts between(num1, num2, num3)
