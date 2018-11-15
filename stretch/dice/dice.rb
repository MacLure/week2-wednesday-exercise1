def roll_die
    return Random.rand(6)+1
end
dice_rolls = [roll_die, roll_die]
puts "You rolled #{dice_rolls[0]} and #{dice_rolls[1]}."
puts "Your total is #{dice_rolls.reduce(:+)}."