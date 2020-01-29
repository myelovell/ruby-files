# 2019-10-14, guess the number
puts "guess the number, but first"
puts "enter your name"
def guess_num()
    puts "enter your name"
    name = gets.chomp

    puts "your max number:"
    max_num = gets.to_i

    while max_num < 1
        puts "enter a number bigger than 0"
        max_num = gets.to_i
    end
    num = rand(max_num)+1

    puts "your amount of tries:"
    tries = gets.to_i

    while tries < 1
        puts "enter a number bigger than 0"
        tries = gets.to_i
    end

    puts "now guess"
    guess = gets.to_i

    while guess != num
        tries -= 1
        puts "wrong, you have #{tries} tries left"
        guess = gets.to_i
        if tries < 1
            puts "#{name} you whore, i said you have no tries left"
            return
        end
    end

    puts "congrats! you have guessed the correct number"
    return
end

guess_num()
