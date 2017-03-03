module Bottle
  module Verse
    class Builder
      def self.build(next_bottles)
        return ::Bottle::Verse::Base.new(99) if next_bottles == -1

        case next_bottles
          when 1
            ::Bottle::Verse::Single.new(next_bottles)
          when 0
            ::Bottle::Verse::Empty.new(next_bottles)
          else
            ::Bottle::Verse::Base.new(next_bottles)
        end
      end
    end
  end
end
