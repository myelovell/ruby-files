#2020-01-28, matte 3C sista uppgiften i prov: extrempunkter

pi = Math::PI

def area(r, h)
    cylinderArea = 2 * pi * r**2 + h * (2 * pi * r)
    return cylinderArea
end

def volym(r, h)
    cylinderVolym = (pi * r**2) * h
    return cylinderVolym
end

def between_10(r, h)
    h = 10
    r = 10

    while r > 0
        puts "for a radie of #{r}:"
        return puts "area: #{area(r, h)}"
        return puts "volym: #{volym(r, h)}"
        r -= 1
    end
end
