def roll_die
    return Random.rand(6)+1
end

10.times do
    puts "The result of your roll is #{roll_die}."
end

