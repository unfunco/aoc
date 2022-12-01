# 2022

These are my solutions for the 2022 Advent of Code. Under each heading there
will be a code block that can be copied and pasted to execute the solution from
your Terminal, provided you have the necessary binaries installed.
Additionally, the crux of each part of the solution is provided, along with some
commentary describing the solution and how it was reached. Code blocks assume
the present working directory to be the same as this README.

## Day 01

```bash
ruby day01.rb
```

```ruby
File.read("day01_input.txt").split(/\n{2}/).map { |elf|
  elf.split($/).map(&:to_i).sum
}.max
```

```ruby
File.read("day01_input.txt").split(/\n{2}/).map { |elf|
  elf.split($/).map(&:to_i).sum
}.max(3).sum
```
