puts "%d" % File.read("day01_input.txt").split(/\n{2}/).map { |elf|
  elf.split($/).map(&:to_i).sum
}.max

puts "%d" % File.read("day01_input.txt").split(/\n{2}/).map { |elf|
  elf.split($/).map(&:to_i).sum
}.max(3).sum
