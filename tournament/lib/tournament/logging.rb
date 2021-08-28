require "logger"

module Tournament

    module Logging
    
        @@logger = Logger.new(STDOUT)

        def log(message, level = "info")
            begin
                @@logger.send(level, message)
            rescue NoMethodError
                @@logger.error("No level #{level} available")
                @@logger.warn(message)
            end
        end

    end
end