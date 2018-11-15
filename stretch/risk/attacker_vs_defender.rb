

def roll_die
    return Random.rand(6)+1
end

attacker_armies = 5
defender_armies = 5

attacker_rolls = []
defender_rolls = []

round_over = false
winner = ''

while round_over == false do

puts "New Battle Begins!"
puts "=================="
puts "\n"
puts "Armies before the battle:"
puts "Attacker: #{attacker_armies} armies"
puts "Defender: #{defender_armies}  armies"
puts "\n"


if attacker_armies >= 4
    attacker_rolls.push(roll_die)
    attacker_rolls.push(roll_die)
    attacker_rolls.push(roll_die)
    attacker_result = attacker_rolls.sort
    puts "Attacker roles #{attacker_result[0]}, #{attacker_result[1]}, #{attacker_result[2]}"
elsif attacker_armies >= 3
    attacker_rolls.push(roll_die)
    attacker_rolls.push(roll_die)
    attacker_result = attacker_rolls.sort
    puts "Attacker roles #{attacker_result[0]}, #{attacker_result[1]}"
else attacker_armies >= 2
    attacker_rolls.push(roll_die)
    attacker_result = attacker_rolls.sort
    puts "Attacker roles #{attacker_result[0]}"
end

if defender_armies >= 2
    defender_rolls.push(roll_die)
    defender_rolls.push(roll_die)
    defender_result = defender_rolls.sort
    puts "Defender roles #{defender_result[0]}, #{defender_result[1]}"
else defender_armies > 1
    defender_rolls.push(roll_die)
    defender_result = defender_rolls.sort
    puts "Defender roles #{defender_result[0]}"
end
puts "\n"
puts "\n"
if defender_result[0] >= attacker_result[0]
    attacker_armies -= 1
else 
    defender_armies -= 1
end

if defender_result[1] >= attacker_result[1]
    attacker_armies -= 1
else 
    defender_armies -= 1
end

if  attacker_armies <= 1
    round_over = true
    winner = "defender"
end

if  defender_armies < 1
    round_over = true
    winner = "attacker"
end

end

puts "Final Outcome"
puts "============="
puts "\n"
puts "Attacker's final army count: #{attacker_armies}"
puts "Defender's final army count: #{defender_armies}"
puts "\n"

if winner == "attacker"
    puts "Attacker takes the country!"
elsif winner == "defender"
    puts "Defender retains their country!"
else
    puts "There is no victory in war."
end