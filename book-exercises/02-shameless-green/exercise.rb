require 'minitest'
require 'minitest/autorun'

class Bottles
  def verse(number)
    if number == 2
        "#{number} bottles of beer on the wall, " +
        "#{number} bottles of beer. \n " +
        "Take one down and pass it around, " +
        "#{number - 1} bottle of beer on the wall"
    else
      "#{number} bottles of beer on the wall, " +
        "#{number} bottles of beer. \n " +
        "Take one down and pass it around, " +
        "#{number - 1} bottles of beer on the wall"
    end
  end
end



class BottlesTest < Minitest::Test
  def test_the_first_verse
    expected = "99 bottles of beer on the wall, " +
      "99 bottles of beer. \n " +
      "Take one down and pass it around, " +
      "98 bottles of beer on the wall"
    assert_equal expected, Bottles.new.verse(99)
  end

  def test_another_verse
    expected = "3 bottles of beer on the wall, " +
      "3 bottles of beer. \n " +
      "Take one down and pass it around, " +
      "2 bottles of beer on the wall"
    assert_equal expected, Bottles.new.verse(3)
  end

  def test_verse_2
    expected = "2 bottles of beer on the wall, " +
      "2 bottles of beer. \n " +
      "Take one down and pass it around, " +
      "1 bottle of beer on the wall"
    assert_equal expected, Bottles.new.verse(2)
  end
end
