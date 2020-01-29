# 2019-10-18 , selected math calculator
puts "choose one of the following:
- addition          (write: +)
- subtraction       (write: -)
- hypotenuse        (write: abc)
- absolute          (write: a)
- positive/negative (write: +-)

"
choice = gets.chomp
puts "when doing this pls only enter an integer thats lower or higher than 0 (idk how to error proof this yet)"
# i'll do this once i learn more programming and get more fluent in the language

# store multiple commands in one call?

def calculator(calc)

    # addition
    if calc == "+"
        puts "a + b = c"
        puts "enter a:"
        a = gets.to_i
        puts "enter b:"
        b = gets.to_i
        c = a + b
        puts "c is: #{c}"

        # subtration
    elsif calc == "-"
        puts "a - b = c"
        puts "enter a:"
        a = gets.to_i
        puts "enter b:"
        b = gets.to_i
        c = a - b
        puts "c is: #{c}"

        #hypotenuse
    elsif calc == "abc"
        puts "a^2 + b^2 = c^2
        your output will be the square root of c^2, i.e c"
        puts "enter a:"
        a = gets.to_i
        puts "enter b:"
        b = gets.to_i
        c = (a**2) + (b**2)
        puts "c is: #{c**0.5}"

        #absolute
    elsif calc == "absolute"
        "absolute value of a is |a|"
        puts "enter a:"
        a = gets.to_i

        if a < 0
            puts "a is: #{2 * a}"
        else
            puts "|#{a}|"
        end

        #positive
    elsif calc == "+-"
        puts "check if a positive or negative"
        puts "enter a:"
        a = gets.to_i

        if a < 0
            puts "#{a} is negative"
        else
            puts "#{a} is positive"
        end

    end
end

calculator(choice)
