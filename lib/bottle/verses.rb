module Bottle
  class Verses

    attr_reader :start, :stop

    def initialize(start, stop)
      @start = start
      @stop = stop
    end

    def call
      start.downto(stop).map{ |v| Bottles.new.verse(v) }
    end

  end
end
