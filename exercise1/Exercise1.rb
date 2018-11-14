# Define a method that accepts a percentage as an argument and returns a letter grade 
# (A+, A, A-, B+, etc) for that percentage.

# Prompt your user to enter a percentage and display a message showing them the equivalent letter grade.



# def get_letter

# puts "What percent did oyu score on your test/assignment?"
# print "> "
# percent = gets.chomp.to_i
#     output = ''

#     if percent < 50
#         output = "F"
#     elsif percent > 50
#         output = "D-"
#     elsif percent > 53
#         output = "D"
#     elsif percent > 57
#         output = "D+"
#     elsif percent > 60
#         output = "C-"
#     elsif percent > 63
#         output = "C"
#     elsif percent > 67
#         output = "C+"
#     elsif percent > 70
#         output = "B-"
#     elsif percent > 73
#         output = "B"
#     elsif percent > 77
#         output = "B+"
#     elsif percent > 80
#         output = "A-"
#     elsif percent > 90
#         output = "A"
#     elsif percent > 98
#         output = "A+"
#     else
#         output = "I don't know what that means"
#     end
    
#     return output

# end

# puts get_letter





def get_letter

    puts "What percent did oyu score on your test/assignment?"
    print "> "
    score = gets.chomp.to_i

    grades = {
        F: (0 ... 49),
        D: (50 ... 59),
        C: (60 ... 69),
        B: (70 ... 79),
        A: (80 ... 100)
    }

    grades.each do |grade, percent|
        if percent.to_a.include?(score)
            return grade
        end
    end
end
    
puts get_letter
