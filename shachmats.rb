# class Shach
# 	attr_accessor :pestininkai, :bokstai, :zirgai, :rikiai, :karaliai, :valdove

# 	def initilaize(pestininkai, bokstai, zirgai, rikiai, karaliai, valdove)
# 		@pestininkai = pestininkai
# 		@bokstai = bokstai
# 		@zirgai = zirgai
# 		@rikiai = rikiai
# 		@karaliai = karaliai
# 		@valfove = valdove
# 	end

# 	def to_s

# 	end
# end

line = File.open("duomenys.txt", "r").read.split("\n").drop(1)

boards = []
result = Array.new(6, 0)


line.each do |line|
	boards << line.split.map(&:to_i)
end

sum = 0
boards.each do |line|
	sum += line.inject(:+)
end

 #print boards.transpose.map {|piece| piece.inject(:+)}


boards.each do |board|
	board.size.times do |index|
		result[index] += board[index]
	end
end

complect = [8, 2, 2, 2, 1, 1]

compleate_board = [
result[0] / 8,
result[1] / 2,
result[2] / 2,
result[3] / 2,
result[4] / 1,
result[5] / 1
]

print compleate_board.min