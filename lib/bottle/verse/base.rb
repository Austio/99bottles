module Bottle
  module Verse
    class Base < Struct.new(:bottles)
      def lines
        [bottles_line, take_line]
      end

      protected

      def bottles_line
        "#{bottles_of_beer} on the wall, #{bottles_of_beer_2}."
      end

      def take_line
        "#{take_down} down and pass it around, #{next_bottle.bottles_of_beer_2} on the wall."
      end

      def bottles_of_beer
        "#{bottles} bottles of beer"
      end

      def bottles_of_beer_2
        bottles_of_beer
      end

      private

      def take_down
        "Take one"
      end

      def next_bottle
        @next_bottle ||= Bottle::Verse::Builder.build(bottles - 1)
      end
    end
  end
end
