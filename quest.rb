# 2019-10-21, a quest to gather inventory (practice lists)
puts "GATHER INVENTORY
game might take up to 10 minutes.
would you like to see your starter inventory?
[yes] or [no]"
answ = gets.chomp

while answ != "yes", "no"
    puts "enter yes or no"
    answ = gets.chomp
    if answ = "yes"
        start_inventory = {
          'gold' => 500
          'pouch' => ["flint", "twine", 'gemstone'],
          'backpack' => ['smaller flute','wooden dagger', 'bedroll','bread loaf', 'array of fruits']
        }
        puts start_inventory
    end
end


#door_one
#door_two
#door_three
#small_gate
