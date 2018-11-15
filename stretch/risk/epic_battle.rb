
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



puts "Attack | Def"
puts "------------"
puts "1 1 1 vs 1 1"


dice_range = (1...7).to_a
a1 = 0
a2 = 0
a3 = 0
d1 = 0
d2 = 0
battle_count = 0
battle_tracker_attacker = []
battle_tracker_defender = []
battle_tracker = []

while a1 < 6 do
    while a2 < 6 do
        while a3 < 6 do
            while d1 < 6 do
                while d2 < 6 do
                    puts "#{dice_range[a1]} #{dice_range[a2]} #{dice_range[a3]} vs #{dice_range[d1]} #{dice_range[d2]}"
                    battle_tracker.push([dice_range[a1], dice_range[a2], dice_range[a3]].sort.concat([dice_range[d1], dice_range[d2]].sort))
                    d2 += 1
                end
                d2 = 0
                d1 += 1
            end
            d1 = 0
            a3 += 1
        end
        a3 = 0
        a2 += 1
    end
    a2 = 0
    a1 += 1
end

attacker_lost = 0
defender_lost = 0

for battle in battle_tracker
    if battle[0] <= battle[3]
        attacker_lost += 1
    end
    if battle[1] <= battle[4]
        attacker_lost += 1
    end
    if battle[3] < battle[0]
        defender_lost += 1
    end
    if battle[4] < battle[1]
        defender_lost += 1
    end
end

puts "\n"
puts "Final Outcome"
puts "============="
puts "\n"
puts "Attacker lost #{attacker_lost} armies."
puts "Defender lost #{defender_lost} armies."
puts "\n"
puts "For every 100 armies the attacker loses, the defender loses #{(1.00 * defender_lost / attacker_lost * 100).round(2)} armies."
