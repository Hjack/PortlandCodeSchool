require 'minitest/autorun'


class Grandma

  def self.talk_to(message)
    return "speak up"
  end
end

class Test_Grandma < MiniTest::Unit::TestCase
  def test_when_i_talk_to_grandma
    assert_equal "speak up",Grandma.talk_to("hi")
  end
end


