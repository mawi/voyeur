module Voyeur
  module Misc
    class Duration
      DURATION_REGEX = /(\d{2})\:(\d{2})\:(\d{2})\.(\d{2})/ 
      
      attr_reader :duration_string
      
      def initialize(duration_string)
        @duration_string = duration_string

      end
      
      def to_seconds
        time = 0
        if @duration_string =~ DURATION_REGEX
          time =  ($3.to_i) + ($2.to_i * 60) + ($1.to_i * 3600) 
        end
        time
      end
      
    end
  end
end
