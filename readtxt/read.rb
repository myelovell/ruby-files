#2019-11-21, read text file, convert to link

#läs in raderna i text filen och skriv ut varje rad som om det vore en länk (www.<ord>....)
#start s: länk med .se annars .com

x = File.readlines("text.txt")
a = 0

for index in 0..(x.length - 1)
    x[index] =  x[index].chomp
end

while a < x.length
    if x[a][0] == "s"
        puts "www.#{x[a]}.se"
    else
        puts "www.#{x[a]}.com"
    end
    a += 1
end
