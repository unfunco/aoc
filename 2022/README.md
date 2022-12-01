# Solutions for 2022

## Day 01

```bash
ruby day01.rb
```

```ruby
File.read("day01_input.txt").split(/\n{2,}/).map { |elf|
  elf.split($/).map(&:to_i).sum
}.max
```

```ruby
File.read("day01_input.txt").split(/\n{2,}/).map { |elf|
  elf.split($/).map(&:to_i).sum
}.max(3).sum
```
