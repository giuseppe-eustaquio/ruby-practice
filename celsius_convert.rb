#!/usr/bin/env ruby 

print "Hello. Please enter a Celsius value: "
celsius = gets.chomp
begin
    celsius = Integer(celsius)
fahrenheit = (celsius * 9 / 5) + 32
puts "Saving result to output file 'temp.out'"
    begin    
        fahrenheit_file = File.new("temp.out", "w")
        fahrenheit_file.puts fahrenheit
        fahrenheit_file.close
    rescue
        print "Unable to save"
    end
rescue
    print "Invalid Input"
end