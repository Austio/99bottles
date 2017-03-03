module Bottle
  class Song

    def call
      ::Bottle::Verses.new(99, 0).call
    end

  end
end
