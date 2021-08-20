def celsiusToFarenheit ( celsius )
    return (celsius * 1.8) + 32 
end

def farenheitToCelsius ( farenheit )
    return (farenheit - 32) * (5.0/9.0)
end


puts "30 celsius is " + celsiusToFarenheit(30).to_s + " farenheit"
puts "20 farenheit is " + farenheitToCelsius(20).to_s + " celsius"
