# Code your solution here!
require 'pry'
def run_guessing_game
  user_input = ""
  while user_input
    puts "Guess a number between 1 and 6."
    user_input = gets.chomp
    computer_guess = rand(1..6) #why does rand(1..6) work but rand(6) + 1 cause errors? Everything I can find online says theyre identical.
    if user_input == "exit"
      puts "Goodbye!"
      break
    elsif user_input.to_i == computer_guess
      puts "You guessed the correct number!"
    else
      puts "The computer guessed #{computer_guess}."
    end
  end
end


# Solution from github, I do everything twice once I find out how to make it pretty.
# def run_guessing_game
#   input = ""
#   while input
#     puts "Guess a number between 1 and 6."
#     input = gets.downcase.chomp
#     random_number = rand(1..6).to_s
#     case input
#     when random_number
#       puts "You guessed the correct number!"
#     when 'exit'
#       puts "Goodbye!"
#       break
#     else
#       puts "The computer guessed #{random_number}."
#     end
#   end
# end
