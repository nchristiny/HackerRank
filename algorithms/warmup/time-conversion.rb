#!/bin/ruby
=begin
  Input Format

  A single string containing a time in 12-hour clock format (i.e.: hh:mm:ssAM or hh:mm:ssPM), where 01 <= hh <= 12.

  Output Format

  Convert and print the given time in 24-hour format, where 00 <= hh <= 23.
=end

time = gets.strip
military_time = ""
numerals = time.scan(/\d./)
meridiem = time.scan(/[^\d.]/)[-2]
hours = numerals[0]

if meridiem == "A" && hours == "12"
  military_time << "00"
elsif meridiem == "P" && hours.to_i < 12
  military_time << (hours.to_i + 12).to_s
else
  military_time << hours
end

military_time << ":" + numerals[1]
military_time << ":" + numerals[2]
puts military_time
