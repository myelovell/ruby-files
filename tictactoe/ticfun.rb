require 'colorize'

system('clear')

player1Color = :light_red
player2Color = :light_blue
# To change the player markers' colors, write a color after the colon

board = ["#", "#", "#",
        "#", "#", "#",
        "#", "#", "#"]

choiceHash = {
        "7" => 0, "8" => 1, "9" => 2,
        "4" => 3, "5" => 4, "6" => 5,
        "1" => 6, "2" => 7, "3" => 8
        }

@player = 1 #starting player (X)

@tilePlaced = ""

def renderBoard(board)
    system('clear')
    # 7,8,9
    # 4,5,6
    # 1,2,3
     puts "#{board[0]} | #{board[1]} | #{board[2]}"
     puts "--|---|--"
     puts "#{board[3]} | #{board[4]} | #{board[5]}"
     puts "--|---|--"
     puts "#{board[6]} | #{board[7]} | #{board[8]}"
end


def placeTile(playerChoice, board, color1, color2)
    if @player == 1
        @tilePlaced = "X".colorize(color1)
        @player = 2 # switch player for next turn
    else
        @tilePlaced = "O".colorize(color2)
        @player = 1
        # both of these will of course only occur if the other player placed a valid move
    end
    board[playerChoice] = @tilePlaced
    return board
end

def checkInput(input)
    if input == "exit" || input == "quit" # the player quit the game
        #system('clear')
        puts "Player #{@player} quit the game!"
        return "quit"
    elsif input.to_i > 9 || input.to_i < 1 # the input didnt work
        @error = true
        puts "Please enter a valid location"
        return "invalid"
    else # the input worked
        return "valid"
    end
end

def checkMessage
    if @error == true
        @error = false
        return "Please enter a valid location"
    else
        return ""
    end
end

def checkWin(board)
    # 7,8,9
    # 4,5,6
    # 1,2,3
    winningCombos = [[6,7,8],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
                    # horizontals           verticals               diagonals  ---- from top to bottom, -1 cuz index is 0 based
    winningCombos.each do |combos|
        if board[combos[0]] == @tilePlaced && board[combos[1]] == @tilePlaced && board[combos[2]] == @tilePlaced
            if @player == 1
                @player = 2
            else
                @player = 1
            end
            return true
        end
    end
    if board.include?("#") == false # A tie, since the game isn't won by any player and all positions are marked
        system('clear')
        puts "Game over!"
        return "tie"
    end
end
running = true
@error = false
while running
    if checkWin(board) == true
        renderBoard(board)
        puts "\nPlayer #{@player} wins!"
        break
    elsif checkWin(board) == "tie"
        break
    end
    renderBoard(board)

    puts checkMessage
    puts "Where would player #{@player} like to mark?"
    i = gets.chomp
    if checkInput(i) == "valid"
    elsif checkInput(i) == "quit"
        break
    elsif checkInput(i) == "invalid"
        redo
    end
    playerChoice = choiceHash[i] # converts user input to board location
    if board[playerChoice] == "#"
        board = placeTile(playerChoice, board, player1Color, player2Color)
    else
        @error = true
        redo
    end
    system('cls')
end
