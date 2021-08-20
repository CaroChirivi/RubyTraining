def celsiusToFarenheit ( celsius )
    (celsius * 1.8) + 32
end

def farenheitToCelsius ( farenheit )
    (farenheit - 32) * (5.0/9.0)
end


puts "20 celsius is #{celsiusToFarenheit(30).to_s } farenheit"
puts "20 farenheit is " + farenheitToCelsius(20).to_s + " celsius"
