#input test for String
while !str.is_a?(String)
    puts "input is not a string, input string"
    str = gets.str
end

#input test for Integer
while !integer.is_a?(Integer)
    puts "input is not an integer, input integer"
    integer = gets.to_i
end

#input test for Float
while !float.is_a?(Float)
    puts "input is not an float, input float"
    float = gets.to_f
end

#input test for Array
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

#input test for example Integer OR Float
while !number.is_a?(Integer) || !number.is_a?(Float)
    puts "this variable is not an integer or float"
    puts "replace with integer/float"
    number = gets.to_f
end
