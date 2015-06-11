def palindrome?(str)
	word = str
	backIndex = word.length - 1
	frontIndex = 0
	if word.length == 0 || word.length == 1
		true
	elsif word[frontIndex] == word[backIndex]
		word[frontIndex]= ''
		word.chop!
		frontIndex +=1
		backIndex -=1
		palindrome?(word)
	else
		false
	end
end

p palindrome?('rotor')
p palindrome?('motor')

def palindrome_iterative(str)
	word = str
	frontIndex = 0
	size = word.length - 1
	answer = true
	while size >=1
		front_letter = word[frontIndex]
		back_letter = word[-1]
		if front_letter == back_letter
			word[frontIndex] = ''
			word.chop!
			size = word.length - 1
		else
			answer = false
			break
		end
	end
	answer
end

p palindrome_iterative('rotor')
p palindrome_iterative('motor')