def celsiusToFarenheit ( celsius )
    return (celsius * 1.8) + 32 
end

def farenheitToCelsius ( farenheit )
    return (farenheit - 32) * (5.0/9.0)
end

puts "Type the celsius value "
celsius = gets.chomp.to_f
puts celsius.class
puts "#{celsius} celsius is #{celsiusToFarenheit(celsius).to_s } farenheit"

puts "Type the farenheit value "
farenheit = gets.chomp.to_f
puts "#{farenheit} farenheit is #{farenheitToCelsius(farenheit).to_s } celsius"
