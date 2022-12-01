# Part 1: 69289
# How many calories are being carried by the elf carrying the most calories?
puts "Part 1: %d" % File.read("day01_input.txt").split(/\n{2,}/).map { |elf|
  elf.split($/).map(&:to_i).sum
}.max

# Part 2: 205615
# How many calories are being carried by the top 3 elves carrying the most
# calories?
puts "Part 2: %d" % File.read("day01_input.txt").split(/\n{2,}/).map { |elf|
  elf.split($/).map(&:to_i).sum
}.max(3).sum
