#Converts tempreture of your choose to another
class Temp

	def self.f_to_c(f)
		c = (f - 32) * 5.0/9.0
		puts "#{f} in Celsius is: #{c} Celsius"
	end

	def self.c_to_f(c)
		f = c * (9.0/5.0) + 32
		puts "#{c} in Farienheit is: #{f} Farienheit"
	end

	def self.k_to_f(k)
		f = 1.8 * (k - 273) + 32
		puts "#{k} in Farienheit is: #{f} Farienheit"
	end

	def self.k_to_c(k)
		c = k - 273
		puts "#{k} in Celcius is: #{c} Celsius"
	end

	def self.c_to_k(c)
		k = c + 273
		puts "#{c} in Kelvin is: #{k} Kelvin"
	end

	def self.f_to_k(f)
		k = (f - 32) / 1.8 + 273
		puts "#{f} in Kelvin is: #{k} Kelvin"
	end

		#Takes what the user is converting from
		puts "What are you converting from?" 
	    puts "Options:\n1.) Farienheit\n2.) Celsius\n3.) Kelvin\n4.) Exit"
	    print "> "
	    o1 = $stdin.gets.chomp

	    #Takes what the user wants to convert to
	    puts "What are you plannin to conver to?"
	    puts "Options:\n1.) Farienheit\n2.) Celsius\n3.) Kelvin\n4.) Exit"
		print "> "
	    o2 = $stdin.gets.chomp

	    #Directs to right function
		    if o1 == "1" && o2 == "2"
		    	puts "What Farienheit do you read captin'? "
		    	print "> "
		    	f = $stdin.gets.chomp.to_i
		    	f_to_c(f)
		    elsif o1 == "2" && o2 == "1"
		    	puts "What is the Celsius sir? "
		    	print "> "
				c = $stdin.gets.chomp.to_i
		    	c_to_f(c)
		    elsif o1 == "1" && o2 == "3"
		    	puts "What Farienheit do you read captin'? "
		    	print "> "
		    	f = $stdin.gets.chomp.to_i
		    	f_to_k(f)
		    elsif o1 == "2" && o2 == "3"
		    	puts "What is the Celsius sir? "
		    	print "> "
				c = $stdin.gets.chomp.to_i
				c_to_k(c)
	 	    elsif o1 == "3" && o2 == "2"
	 	    	puts "What is the Kelvin Commnander?: "
	 	    	print "> "
	 	    	k = $stdin.gets.chomp.to_i
	 	    	k_to_c(k)
	 	    elsif o1 == "3" && o2 == "1"
	 	    	puts "What is the Kelvin Commnander?: "
	 	    	print "> "
	 	    	k = $stdin.gets.chomp.to_i
	 	    	k_to_f(k)
	 	    elsif o1 == "4" || o2 == "4"
	 	    	puts "Please come agian! :) "
	 	    	exit(0)
	 	    else
		    	puts "Make sense or something baka"
		    end
end





