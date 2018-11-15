def roll_die
    return Random.rand(6)+1
end

rolls_array = []

5.times do
    rolls_array.push "The result of your roll is #{roll_die}."
end

rolls_array_sorted = rolls_array.sort
puts rolls_array_sorted

puts "The lowest number is #{rolls_array_sorted.first}"
puts "The highest number is #{rolls_array_sorted.last}"
