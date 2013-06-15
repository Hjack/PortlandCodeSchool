require 'minitest/autorun'
require 'minitest/pride'

require './farkle'

class RollTest < MiniTest::Unit::TestCase

  def setup
    @roll = Roll.new
  end

  def test_die
    assert_equal(@roll.equal,[])
  end
end


