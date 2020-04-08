#2020-02-02, think like a coder, the chasm. check for and sort a palindrom

#input example = array = [A, B, C, C, A, B, A]

def the_chasm(array)
    while !array.is_a?(Array)
        puts "input is not an array, input LETTER"
        puts "write END when done"
        input = gets.chomp
        array = []
        while input != "END"
            array << input
            input = gets.chomp
        end
    end
    #conditions:
    # 1. at most one letter can appear an odder number of times
    # 2. the rest have to be even

    #count the letters in input array and organize them in a dictionary
    #loop counts how many times an odd number appears
    #if less than 2 odd numbers = palindrome


    block_count = 0
    block_num = 0
    #block#{block_stack} = [] #new array for every new type of block


    while block_stack < array.length

        while block_num < array.length
            if array[block_stack] != block[block_num]
                #block#{block_stack} = []
                #block#{block_stack} << block_stack
            end
            block_num += 1
        end
        block_count += 1
    end


end
