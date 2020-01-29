#2019-12-14, de rovarsprak

#konsonanter = ["bob", "coc", "dod", "fof", "gog", "hoh", "joj", "kok", "lol", "mom", "non", "pop", "qoq", "ror", "sos", "tot", "vov", "wow", "xox", "zoz" , "BOB", "COC", "DOD", "FOF", "GOG", "HOH", "JOJ", "KOK", "LOL", "MOM", "NON", "POP", "QOQ", "ROR", "SOS", "TOT", "VOV", "WOW", "XOX", "ZOZ" ]

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
        found = 0

        while index2 <= (konsonanter.length - 1)
            cur_konsonant = konsonanter[index2]
            if letter == cur_konsonant
                if words[index1 + 1] == "o" && words[index1 + 2] == letter
                    output += letter
                    index1 += 2
                    found += 1
                end
            end
            index2 += 1
        end

        if found == 0
            output += letter
        end
        index1 += 1
    end
    return output
end

puts translate(words)
