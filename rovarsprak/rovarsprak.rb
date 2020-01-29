#2019-12-12, rövarspråket py-->rb

#gjorde funktionen i python innan
#words = input("meningen du vill översätta är:\n")
#def translate(words):
#    output = ("")
#    konsonanter = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z" , "B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Z" ]
#    for letters in  words:
#        if letters in konsonanter:
#            output += str(letters + "o" + letters)
#        else:
#            output += letters
#    return output

#print (translate(words))

puts "enter the sentence you want translated:"
words = gets.to_str

def translate(words)
konsonanter = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z" , "B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Z" ]
index1 = 0
index2 = 0
output = ""

    while index1 <= (words.length - 1)
        letter = words[index1]
        index2 = 0
        while index2 <= (konsonanter.length - 1)
            cur_konsonant = konsonanter[index2]
            if letter == cur_konsonant
                output += letter + "o"
                break
            end
            index2 += 1
        end
        output += letter
        index1 += 1
    end
    return output
end

puts translate(words)
