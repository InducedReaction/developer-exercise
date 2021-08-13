#An excersize for Jaguar Design Studio
#By: Fozi Azzubaidi
#Email: foziazzubaidi@gmail.com
class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
	
	words = Array.new
	#count words
	words = str.split(" ")
	
	#loop thru words. for loops are different in Ruby
	x = 0
	while x < words.size
	
	#remove punctuation
	words[x].gsub! '!', ''
	words[x].gsub! '.', ''
	words[x].gsub! '?', ''
	words[x].gsub! ',', ''
	#array to count letters as well as check the first for capitalization.
	letters = Array.new
	letters = words[x].split("")
		
		#check case and word size
		if letters[0] == letters[0].upcase && letters.size > 4
			str.gsub!''+words[x]+'', 'Marklar'
		end
		if letters[0] != letters[0].upcase && letters.size > 4
			str.gsub!''+words[x]+'', 'marklar'
		end
	
		
		
	x += 1
	end
	
	
	return str
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
		lastnum=0;#need the next 2 variable to keep track of past numbers
		last2=0;
		sumofeven = 0;# initializing sum of even numbers
		i = 0;#supposed to be a for loop, but ruby has strange for loops
		while i < nth
		
			if i < 1 #first 
				fi = 1
			else
			last2 = lastnum
			lastnum = fi
			fi += last2
			
				if fi.even?
					sumofeven += fi					
				end	
			
			
			
			end
		i += 1#incriment for the for loop
		end
	
	return sumofeven;
  end

end
