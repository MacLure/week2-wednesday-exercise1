# Exercise 0
colours = ["red", "green", "blue", "orange", "purple", "yellow"]
ages = [37, 39, 20, 19]
coinflip = [true, true, false, true, false, false]
artists = ["Cryptopsy", "Hitomi Uehara", "Oscar Peterson"]
colours_keys = [:red, :green, :blue, :orange, :purple, :yellow]

words = {
    dog: "Not a cat",
    sea: "Big blue wobbly thing",
    hat: "Thing you put on your head"
}

movies = {
    "Secret in Their Eyes": 2015,
    "The Girl Who Leapt Through Time": 2006,
    "Psycho": 1960
}

cities = {
    Vienna: 1899055,
    Jakarta: 10075310,
    Windhoek: 325858
}

people = {
    Nils: 5,
    Davd: 39,
    Ben: 20
}


# Exercise 1
puts coinflip
puts "-----"
puts colours[0]
puts "-----"
puts ages.sort
puts "-----"
people[:baby] = 0
puts people
puts "-----"
puts movies[:"Psycho"]

# Exercise 2
puts "-----"
puts colours[-1]
puts "-----"
cities[:Baghdad] = 8765000
puts cities
puts "-----"
coinflip = coinflip.reverse
puts coinflip
puts "-----"
puts cities[:Windhoek]
puts "-----"
artists.each do |artist|
    puts "I think #{artist} is great."
end
puts "-----"

# Exercise 3
puts artists[0] + ", " + artists[1]
puts "-----"
movies.each do |movie, year|
    puts "#{movie} came out in #{year}."
end
puts "-----"
ages = ages.sort.reverse
puts ages
puts "-----"
movies[:"Beauty and the Beast"] = 1991
movies[:"Beauty and the Beast renake"] = 2017
puts movies
puts "-----"
# Add "Beauty and the Beast" movie to your hash of movies information, but with a twist: the movie was released both in 1991 and in 2017. Print it out.

# Exercise 4
ages = [37, 39, 20, 19, 24]

puts ages.select {|age| age < 30}

puts "-----"
puts ages.sort[-1]
puts "-----"
puts coinflip.count true
puts "-----"
artists.delete_at(0)
puts artists
puts "-----"
cities[:Vienna] +=1
puts [cities[:Vienna]]
puts "-----"

# Exercise 5
def get_total_pop(hash)
    total_pop = 0
    hash.each do |city, pop|
        total_pop += pop
    end
    return total_pop
end
puts get_total_pop(cities)
puts "-----"

def get_age_messages(hash)
    hash.each do |person, age|
        if age >= 30
            puts "#{person} is old."
        else
            puts "#{person} is young."
        end
    end
end
get_age_messages(people)
puts "-----"
puts colours[-1]
puts colours[-2]
puts "-----"

def add_ages(hash)
    hash.each do |person, age|
        hash[person] += 1
    end
    return hash
end
puts add_ages(people)
puts "-----"

colours.push("brown")
colours.push("pink")
puts colours
puts "-----"

# Exercise 6
movies = {
    1999 => ["The Matrix", "Star Wars: Episode 1", "The Mummy"],
    2009 => ["Avatar", "Star Trek", "District 9"],
    2019 => ["How to Train Your Dragon 3", "Toy Story 4", "Star Wars: Episode 9"]
}

phone_digits = {
    row_1: [1, 2, 3],
    row_2: [4, 5, 6],
    row_3: [7, 8, 9],
    row_4: ["*", 0, "#"]
}

more_countries = {
    taiwan: {
        name: "Taiwan",
        continent: "Asia",
        is_island: true
    },
    angola: {
        name: "Angola",
        continent: "Africa",
        is_island: false
    },
    chile: {
        name: "Chile",
        continent: "South America",
        is_island: false
    }
}

# Exercise 7
20.times do
    puts "I will not skateboard in the halls"
end
puts "-----"
skateboard_arr = []
20.times do
    skateboard_arr.push "I will not skateboard in the halls"
end
puts skateboard_arr.inspect
puts "-----"
one_to_fifty = (1...51).to_a
puts one_to_fifty.inspect
puts "-----"
one_to_fifty_sum = 0
one_to_fifty.each do |num|
    one_to_fifty_sum += num
end
puts one_to_fifty_sum
puts "-----"
one_to_fifty_x3 = []
one_to_fifty.each do |num|
    3.times do 
        one_to_fifty_x3.push(num)
    end
end
puts one_to_fifty_x3.inspect
puts "-----"
non_island_countries_hash = more_countries.select { |key, value| value[:is_island] == false}
non_island_countries_arr = []
non_island_countries_hash.each do | key, value |
    non_island_countries_arr.push(value[:name].to_s)
end
puts non_island_countries_arr
puts "-----"

# Exercise 8

my_expenses = [250, 7.95, 30.95, 16.50]
puts my_expenses.reduce(:+)
puts "-----"

def get_sum(arr)
    sum = 0
    for item in arr
        sum += item
    end
    return sum
end
arr1 = [3,5,6,4,2,2,4,5,3.1]
arr2 = [2345,5342,435,435,54.5]
puts get_sum(arr1)
puts get_sum(arr2)
puts "-----"

# Exercise 9
grocery_list = ["carrots", "toilet paper", "apples", "salmon"]
puts grocery_list.map {|item| "* " + item }
puts "-----"
grocery_list.push("rice")
def print_list(arr)
    return arr.map {|item| "* " + item }
end
puts print_list(grocery_list)
puts "-----"
puts grocery_list.length
puts "-----"
def check_for_bananas(arr)
    if arr.include?("bananas")
        return "You don't need to pick up bananas today."
    else 
        return "You need to pick up bananas."
    end
end
puts check_for_bananas(grocery_list)
puts "-----"
puts grocery_list[1]
puts "-----"
def print_list_alphabetically(arr)
    return arr.sort.map {|item| "* " + item }
end
puts print_list_alphabetically(grocery_list)
puts "-----"
grocery_list.delete("salmon")
puts print_list_alphabetically(grocery_list)
puts "-----"


# Exercise 10
# Create a file named exercise9.rb. <-- I'm ignoring this step.

students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}

def show_cohorts(hash)
    output =[]
    hash.each do|cohort, enrollment|
        output.push ("#{cohort} : #{enrollment} students")
    end
    return output;
end
puts show_cohorts(students)
puts "-----"
students[:cohort4] = 43
puts show_cohorts(students)
puts "-----"
puts students.keys
puts "-----"
students.each {|cohort, enrollment|
    students[cohort] = enrollment *= 1.05
}
puts show_cohorts(students)
puts "-----"
students.delete(:cohort2)
puts show_cohorts(students)
puts "-----"

def count_all_students(hash)
    total_enrollment = 0
    hash.each do |cohort, enrollment|
        total_enrollment += enrollment
    end
    return total_enrollment
end
puts count_all_students(students)
puts "-----"

staff = {
    :cohort1 => 3,
    :cohort2 => 5,
    :cohort3 => 2,
    :cohort4 => 7,
}
def show_cohorts_staff(hash)
    output =[]
    hash.each do|cohort, enrollment|
        output.push ("#{cohort} : #{enrollment} staff members")
    end
    return output;
end
puts show_cohorts_staff(staff)
puts count_all_students(staff)
puts "-----"

# Exercise 11
nums=(1... 101)
output = []
for num in nums
    if num % 3 != 0 && num % 5 != 0
        output.push(num)
    elsif num % 3 == 0 && num % 5 != 0
        output.push("Bit")
    elsif num % 3 != 0 && num % 5 == 0
        output.push("Maker")
    else 
        output.push("BitMaker")
    end
end
puts output
puts "-----"


# Exercise 12
puts "How many pizzas do you want?"
print "> "
quantity = gets.chomp.to_i
pizza_number = 1

while quantity > 0 do
    puts "How many toppings for pizza #{pizza_number}?"
    print "> "
    topping_number = gets.chomp.to_i
    puts "You have ordered a pizza with #{topping_number} toppings"
    quantity -= 1
    pizza_number += 1
end

# # Stretch Exercise 1

# Make a new array that consists of all the elements of your fav_colours and fav_artists arrays. Then sort the array and output it.
puts "-----" 
colours_and_artists = colours.concat(artists).map {|item| item.capitalize}
puts colours_and_artists.sort
puts "-----" 
for artist in artists
    for age in ages
        puts "I <3 #{artist} #{age}"
    end
end
puts "-----" 
ages_plus_one = ages.map{|age| age += 1}
puts ages_plus_one.inspect
puts "-----" 
summed_ages = ages.reduce(:+)
puts "The sum of our ages is #{summed_ages}."
puts "-----" 
heads_only = coinflip.select{|item|item == true}
puts heads_only

