# [N]     [C]                 [Q]
# [W]     [J] [L]             [J] [V]
# [F]     [N] [D]     [L]     [S] [W]
# [R] [S] [F] [G]     [R]     [V] [Z]
# [Z] [G] [Q] [C]     [W] [C] [F] [G]
# [S] [Q] [V] [P] [S] [F] [D] [R] [S]
# [M] [P] [R] [Z] [P] [D] [N] [N] [M]
# [D] [W] [W] [F] [T] [H] [Z] [W] [R]
#  1   2   3   4   5   6   7   8   9
# move 1 from 3 to 9
# move 3 from 5 to 3

stacks = [
  ["D", "M", "S", "Z", "R", "F", "W", "N"],
  ["W", "P", "Q", "G", "S"],
  ["W", "R", "V", "Q", "F", "N", "J", "C"],
  ["F", "Z", "P", "C", "G", "D", "L"],
  ["T", "P", "S"],
  ["H", "D", "F", "W", "R", "L"],
  ["Z", "N", "D", "C"],
  ["W", "N", "R", "F", "V", "S", "J", "Q"],
  ["R", "M", "S", "G", "Z", "W", "V"],
]

File.read("day05_input.txt").split(/\n{2}/)[1].split($/) do |instruction|
  move, from, to = instruction.scan(/\d+/).map(&:to_i)
#   # Part 1
#   move.times do
#     crate = stacks[from-1].pop
#     stacks[to-1].push(crate)
#   end

  # Part 2
  crates = stacks[from-1].pop(move)
  stacks[to-1] += crates
end

stacks.each do |stack|
  puts stack.last
end
