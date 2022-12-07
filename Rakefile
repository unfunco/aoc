# frozen_string_literal: true

desc 'Test the solution for a given year and day'
task :aoc, [:year, :day] do |_, args|
  if args.day.nil?
    (1..25).each do |day|
      filename = "#{__dir__}/#{args.year}/day#{format('%02d', day)}.rb"
      if File.exist?(filename)
        require filename
      else
        warn "No more files? Exiting before day #{day}."
        break
      end
    end
  else
    require "#{__dir__}/#{args.year}/day#{format('%02d', args.day)}"
  end
end
