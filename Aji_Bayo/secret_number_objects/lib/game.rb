require 'lib/person'
require 'lib/secret_number'

class Game
 attr_accessor :player, :guesses_left, :secret_number_instance

 def initialize(player_name)
 	@player = Person.new(player_name)
    @guesses_left = 3
    @secret_number_instance = SecretNumber.new
    greet_player
 end	
 
 def greet_player
 	puts " Welcome " + @player.player_name
 	puts " These are the rules to my game!"
    puts "I've chosen a number from 1 to 10!"
    puts "And you have only 3 guesses to guess what that number is!"
    puts "Ready? Let us get started!"
 end

 def play_game
 	secret_number = @secret_number_instance.get_random_number
 	while @guesses_left >= 1

	 	puts " What's your guess?"
	 	player_guess = gets.chomp.to_i


		if player_guess == secret_number 
			puts "Congratz! You guessed the secret number! You win!"
			break
		 elsif player_guess > secret_number 
		    puts " Sorry,you have guessed too high"
		    @guesses_left = @guesses_left - 1
		elsif player_guess < secret_number 
	        puts "Sorry you have guessed too low"
	        @guesses_left = @guesses_left - 1
		end

		if @guesses_left == 0
			puts " Sorry you are out of guesses. The secret number was #{secret_number}."
		else
			puts  "You have #{@guesses_left} many guesses before the game is over enter a another number"
		end	
	end

 end	


#This class holds most of the game logic and should:
#		Welcome players and inform them of the game rules.
#		Initialize the Player class.
# 		Initialize the Secret Number class.
# 		Prompt the user to choose a number, verify if the user guessed correctly.
# 		If the user guesses incorrectly let them know if they were too high or too low.
#		Monitor how many guesses the player has before the game is over.
#
# In creating your game, make sure it has arrays, hashes and all functionality is wrapped in methods.
# Add helpful comments to your code to document what each section does.
#
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly
end
