#2019-11-07 next or previous number
#egen version

puts "do you want the next or previous number?"
a = gets.chomp

puts "enter number"
num = gets.to_i

def next_or_prev(a, num)
    if a == "next"
        new = num + 1
        return new
    else
        new = num - 1
        return new
    end
end

puts next_or_prev(a, num)
