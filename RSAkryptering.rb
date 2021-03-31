#2021-03-15, RSA encryption using modulo and ruby

require 'prime'

class RSAKryptering
    def initialize #1
        @pPrime =  1229
        @qPrime = 571
    end

    def bank()
        nKey = @pPrime * @qPrime #2
    
        temporary = (@pPrime - 1) * (@qPrime - 1) #3
        p temporary

        #4 - check if eNum is relative prime to temporary
        temporaryFactors = []
        nonFactors = []
        index1 = 2

        while index1 <= temporary #when found smallest num begin from 2 
            #remove non primes
            p "index1: #{index1}"
            if (index1).prime? == true
                if temporary % index1 == 0
                    temporary = temporary / index1
                    p "temp/index1: #{temporary / index1}"
                    p "temporary: #{temporary}"
                    temporaryFactors << index1
                    p "temporaryFactors: #{temporaryFactors}"
                    index1 = 2
                else  
                    nonFactors << index1
                    p "nonfactors: #{nonFactors}"
                    index1 += 1
                end
            else    
                index1 += 1
            end
            
            
        end 
        

        index2 = 2
        eNum = 1
        while index2 <= nonFactors.length + 1 #remove non primes
            p index2
            if (index2).prime? == true
                eNum = eNum * index2
            end
            index += 1
        end
        puts "e = #{eNum}"

        
        #5 dcryptkey = eNum * dNum
        rest = 1 % temporary 
        dNum = 2

        while decryptKey % dNum != rest #loop through nums until true
            decryptKey = eNum * dNum
            if decryptKey % temporary == rest
                return true
            else 
                @dNum = dNum + 1
            end 
        end
        puts "d = #{dnum}"

        

    end 

    def hack()
        #x ** d(mod n)
        password = @tal ** @dNum % nkey

    end

end

bank = RSAKryptering.new 
bank.bank()
puts bank.hack(798)
