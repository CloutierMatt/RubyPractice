a = 0
b = 1
c = 0
same = 0
fibb = Array.new

while(same < 11)
	d = b
	c = a + b # 1 + 2 = 3
	if c < 4000000 && c % 2 == 0
		fibb.push(c)
	end
	a = d + c # 2 + 3 = 5
	if a < 4000000 && a % 2 == 0
		fibb.push(a)
	end
	b = c + a # 13 + 21 = 34
	if b < 4000000 && b % 2 == 0
		fibb.push(b)
	end

	same += 1
end

many = fibb.length
total = 0
(0...many).each do |i|
	total += fibb[i]
end
puts total