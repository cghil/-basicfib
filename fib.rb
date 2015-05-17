# recursive solution

def fib_recursive(n)
	if n == 0 || n == 1
		return n
	else 
		fib(n-1)  + fib(n-2)
	end
end


# 0, 1, 1, 2, 3, 5, 8, ...

def fib_iterative(n)
	num = 0
	next_num = 1
	positions = 1..n
	positions.each do |position|
		num = next_num
		next_num = next_num + num
	end
	retun num
end

def fib_iterative_two(n)
	num = 0
	new_term = 0
	next_num = 1
	(1..n).each do |position|
		new_term = next_num + num
		num = next_num
		next_num = new_term
	end
	new_term
end

p fib_iterative_two(1)
p fib_iterative_two(3)