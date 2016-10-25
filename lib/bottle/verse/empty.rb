module Bottle
  module Verse
    class Empty < Bottle::Verse::Base
      def bottles_of_beer
        "No more bottles of beer"
      end

      def bottles_of_beer_2
        "no more bottles of beer"
      end

      def take_line
        "Go to the store and buy some more, #{next_bottle.bottles_of_beer} on the wall."
      end
    end
  end
end
