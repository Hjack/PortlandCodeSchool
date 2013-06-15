def greeting 
"\n\nInstructions:\nPut a 1 for every keeper and a zero for non-keepers
for example with [1, 2, 3, 4, 5, 6], 101010 would keep 1,3,and a 5 \n "
end

# a number 1 is worth 100 points

# a number 5 is worth 50 points

# three dice rolled at the same time with the same value is worth 100 times the face value, i.e.:

# three 2’s rolled is 200 points

# three 5’s rolled is 500 points

# One exception to this rule is that three 1’s rolled is 1000 points rather than 100 points



# class FarkleScorerTest < Minitest::Unit::TestCase

#   def test_one_one_equals_100
#     assert_equal 100, farkle_scorer([166666])
#   end

#   def test_one_five_equals_50
#     skip
#     assert_equal 50,farkle_scorer([566666])
#   end

#   def test_three_dice_equals_100_times_dice_value
#     skip
#     assert_equal 400, farkle_scorer([444236])
#   end
# end