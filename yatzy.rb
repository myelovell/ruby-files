#2021-02-09, Yatzy one roll, roll generator

# Pair = (c(5,2) * c(6,1) * 5*4*3) / 6^5 
#     Probability = 0.462962963 or 46.2962963%
@p = 0.462962963
@pp = "46.2962963%"

# Two Pair = (c(5,4) * c(6,2) * 5) / 6^5   => c(6,1)*c(5,2)*c(5,1)*c(3,2)*2! eller c(6,2)*c(5,2)*c(3,2)*4
#     Probability = 0.0482253086 or 4.82253086%
@tp = 0.0482253086
@tpp = "4.82253086%"

# Three of a Kind = (c(5,3) * c(6,1) * 5*4) / 6^5 
#     Probability = 0.1543209877 or 15.43209877%
@tk = 0.1543209877
@tkp = "15.43209877%"

# Four of a Kind = (c(5,4) * c(6,1) * 5) / 6^5 
#     Probability = 0.0192901235 or 1.92901235%
@fk = 0.0192901235
@fkp = "1.92901235%"

# Small Straight = (c(5,5) * c(6,5)) / 6^5  c(5,1)*c(6,1) * c(4,1)*c(5,1) * c(3,1)*c(4,1) * c(2,1)*c(3,1) * c(1,1)*c(2,1)
#     Probability = 0.0007716049383 or 0.07716049383%
@ss = 0.0007716049383
@ssp = "0.07716049383%"

# Large Straight = (c(5,5) * c(6,5)) / 6^5 
#     Probability = 0.0007716049383 or 0.07716049383%
@ls = 0.0007716049383
@lsp = "0.07716049383%"

# Full House = (c(5,5) * c(6,2)) / 6^5     c(5,3)*c(6,1) * c(3,2)*c(5,1) eller c(5,2)*c(6,2)
#     Probability = 0.0019290123 or 0.19290123%
@fh = 0.0019290123
@fhp = "0.19290123%"

# Yatzy = (c(5,5) * c(6,1)) / 6^5 
#     Probability = 0.0007716049383 or 0.07716049383%
@y = 0.0007716049383
@yp = "0.07716049383%"



def yatzy()
    pa = []
    tpa = []
    tka = []
    fka = []
    ssa = []
    lsa = []
    fha = []
    ya = []
    for i in 0...1599
        temporary = []
        num = 0
        while num <= 4
            x = rand(6) + 1
            temporary = temporary << x
            num += 1
        end
        temporary = temporary.sort
        one = 0
        two = 0
        three = 0
        four = 0
        five = 0
        six = 0
        for index in 0...5
            if temporary[index] == 1
                one += 1
            elsif temporary[index] == 2
                two += 1 
            elsif temporary[index] == 3
                three += 1
            elsif temporary[index] == 4
                four += 1
            elsif temporary[index] == 5
                five += 1
            elsif temporary[index] == 6
                six += 1
            end
        end 
        value = []
        # value << one << two << three << four << five << six
        value = value << one 
        value = value << two 
        value = value << three 
        value = value << four 
        value = value << five 
        value = value << six
        value = value.sort 
        p temporary
        if temporary == [1,2,3,4,5]
            ssa << temporary
        elsif temporary == [2,3,4,5,6]
            lsa << temporary
        end 
        if value == [0,0,1,1,1,2]
            pa << temporary
           
        elsif value == [0,0,0,1,2,2]
            tpa << temporary
            
        elsif value == [0,0,0,1,1,3]
            tka << temporary
            
        elsif value == [0,0,0,0,1,4]
            fka << temporary
          
        elsif value == [0,0,0,0,2,3]
            fha << temporary
            
        elsif value == [0,0,0,0,0,5]
            ya << temporary 
            
        end
        temporary = []
        one = 0
        two = 0
        three = 0
        four = 0
        five = 0
        six = 0
        value = []
    end
    pr = (pa.length.to_f / 1600) * 100
    tpr = (tpa.length.to_f / 1600) * 100
    tkr = (tka.length.to_f / 1600) * 100
    fkr = (fka.length.to_f / 1600) * 100
    ssr = (ssa.length.to_f / 1600) * 100
    lsr = (lsa.length.to_f / 1600) * 100
    fhr = (fha.length.to_f / 1600) * 100
    yr = (ya.length.to_f / 1600) * 100

    puts "Analog Calculation of Pair: #{@pp} vs Digital Calculation of Pair: #{pr}%"
    puts "Analog Calculation of Two Pairs: #{@tpp} vs Digital Calculation of Two Pairs: #{tpr}%"
    puts "Analog Calculation of Three pf a Kind: #{@tkp} vs Digital Calculation of Three pf a Kind: #{tkr}%"
    puts "Analog Calculation of Four of a Kind: #{@fkp} vs Digital Calculation of Four of a Kind: #{fkr}%"
    puts "Analog Calculation of Small Straight: #{@ssp} vs Digital Calculation of Small Straiight: #{ssr}%"
    puts "Analog Calculation of Large Straight: #{@lsp} vs Digital Calculation of Large Straight: #{lsr}%"
    puts "Analog Calculation of Full House: #{@fhp} vs Digital Calculation of Full House: #{fhr}%"
    puts "Analog Calculation of Yatzy: #{@yp} vs Digital Calculation of Yatzy: #{yr}%"

  
end

yatzy()