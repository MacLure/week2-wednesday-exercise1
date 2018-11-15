dice_range = (1...7).to_a
i = 0
j = 0
permutations_count = 0
while i < 6 do
    while j < 6 do
        puts "Dice Roll: #{dice_range[i]}, #{dice_range[j]} Total #{dice_range[i] + dice_range[j]}"
        j += 1
        permutations_count += 1
    end
    j = 0
    i += 1
end
puts "There are #{permutations_count} possible permutations."
