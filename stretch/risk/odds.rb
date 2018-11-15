dice_range = (1...7).to_a
i = 0
j = 0
permutations_count = 0

totals_list = {
    2 => 0,
    3 => 0,
    4 => 0,
    5 => 0,
    6 => 0,
    7 => 0,
    8 => 0,
    9 => 0,
    10 => 0,
    11 => 0,
    12 => 0
}
total = 0
while i < 6 do
    while j < 6 do
        puts "Dice Roll: #{dice_range[i]}, #{dice_range[j]} Total #{dice_range[i] + dice_range[j]}"
        total = dice_range[i] + dice_range[j]
        totals_list[total] += 1    
        j += 1
        permutations_count += 1
    end
    j = 0
    i += 1
end

puts "There are #{permutations_count} possible permutations."
totals_list.each do |total, count| 
    puts "#{total} occurs #{count} times."
end

odds_list = totals_list.keys.map{|key|"The odds of #{key} coming up are #{(totals_list[key] / 36.00 * 100).round}%"}

puts odds_list