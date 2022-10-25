#Rock Paper and Scissors

class Game

	def computer_choice(number)
		choices = ["Rock", "Paper", "Scissor"]
		same = choices[number]
		@same = same
		return same
	end
	
	def user_choice
		puts "Do you pick Rock, Paper, or Scissor? Cap first letter I'm lazy :)"
		print ">"
		@choice = $stdin.gets.chomp
	end
	
	def fight
		if @choice == @same
			puts "Its a tie"
		elsif @choice == "Rock" && @same == "Scissor"
			puts "You win"
		elsif @choice == "Paper" && @same == "Rock"
			puts "You win"
		elsif @choice == "Scissor" && @same == "Paper"
			puts "You win"
		else
			puts "You lose"
		end
	end
end
comp_choice = rand(1..3)
test = Game.new()
hold = test.computer_choice(comp_choice)
test.user_choice()
test.fight()
puts "The computer chooses #{hold}" 