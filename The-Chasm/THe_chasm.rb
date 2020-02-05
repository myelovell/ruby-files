#2020-02-02, think like a coder, the chasm. check for and sort a palindrom

def the_chasm(array)
    while !array.is_a?(Array)
        puts "input is not an array, input variable"
        puts "write END when done"
        input = gets.chomp
        array = []
        while input != "END"
            array << input
            input = gets.chomp
        end
    end

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
