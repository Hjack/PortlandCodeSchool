def pig_machine (word_to_change)
  if word_to_change.scan(/[aeiou]/)
  end
end

require "minitest/autorun"

class PigTest < MiniTest::Unit::TestCase

  def test_vowel_returns_ay
    assert_equal "appleay", pig_machine("apple")
  end

  def test_consanant_returns_ordway
    skip
    assert_equal "igpay", pig_machine("pig")
  end

end