#2020-01-22, tic tac toe
#intro
puts "let's play tic tac toe!\n
player one's name:"
player1_name = gets.chomp

puts "player two's name:"
player2_name = gets.chomp

puts "this is the playing board:
#########
# 1 2 3 #
# 4 5 6 #
# 7 8 9 #
#########"



board = "#########
# #{index1} #{index2} #{index3} #
# #{index4} #{index5} #{index6} #
# #{index7} #{index8} #{index9} #
#########"

#Render board, according to peters code
def render(#argument)
    systen("clear")
    puts board
    puts #argument
end

#Check player 1 input
def player1_check(player1)
    while !player1.is_a?(Integer)
        puts "#{player1_name}'s input is not a number
        input a number"
        player1 = gets.to_i
        while player1 == 1..9
            puts "#{player1_name}'s input is negative or larger than 9
            input a positive number between 1-9"
            player1 = gets.to_i
        end
    end
end

puts player1_check()

#chekc player 2 input
def player2_check(player2)
    while !player2.is_a?(Integer)
        puts "#{player2_name}'s input is not a number
        input a number"
        player2 = gets.to_i
        while player2 == 1..9
            puts "#{player2_name}'s input is negative or larger than 9
            input a positive number between 1-9"
            player2 = gets.to_i
        end
    end
end

#layer input and placement
def place(player2)
