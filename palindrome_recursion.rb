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