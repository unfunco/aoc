# frozen_string_literal: true

desc 'Test the solution for a given year and day'
task :test, [:year, :day] do |_, args|
  if args.day.nil?
    (1..25).each do |day|
      require "#{__dir__}/#{args.year}/day#{format('%02d', day)}"
    end
  else
    require "#{__dir__}/#{args.year}/day#{format('%02d', args.day)}"
  end
end
