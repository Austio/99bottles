module Bottle
  module Verse
    class Single < Bottle::Verse::Base
      def bottles_of_beer
        "1 bottle of beer"
      end

      def take_down
        "Take it"
      end
    end
  end
end
