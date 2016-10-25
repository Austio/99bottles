require './lib/bottle/verse/base'
require './lib/bottle/verse/builder'
require './lib/bottle/verse/single'
require './lib/bottle/verse/empty'
require './lib/bottle/verses'
require './lib/bottle/song'

class Bottles
  def verse(x)
    bottle = ::Bottle::Verse::Builder.build(x).lines

    bottle.map{|n| "#{n}\n"}.join
  end

  def verses(*args)
    vs = ::Bottle::Verses.new(*args).call

    vs.join("\n")
  end

  def song
    s = ::Bottle::Song.new.call

    s.join("\n")
  end
end
