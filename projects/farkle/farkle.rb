class DiceBox

  def initialize
    @roll_returner = []
    @roll_holder = []
    roll_chooser = ""
  end

  def die_multi_roller(n)
    n.times do
      @roll_returner.push(DieRoller.roll)
    end
    return @roll_returner
  end
end

class DieRoller
  def self.roll
    rand(6)+1
  end
end

game = DiceBox.new
keepers = []
roll_holder = game.die_multi_roller(6)
roll_count = 0
while roll_count < 6 && keepers.length < 6

  puts "\nWhat dice do you want to keep?\n
  Put a 1 for every keeper and a zero for non-keepers
  for example with [1, 2, 3, 4, 5, 6] 101010 would keep 1,3,and a 5 \n "
  print roll_holder

  roll_chooser = gets.chomp
    # puts roll_chooser

    roll_chooser = roll_chooser.split(//)
    # print roll_chooser
    roll_chooser = roll_chooser[0..(5 - keepers.length)]

    roll_chooser.map! { |w| w.to_i}
    # print roll_chooser

    roll_chooser.each_index do |x|
      case
      when
        roll_chooser[x] == 1
        keepers.push(roll_holder[x])
      end
    end
    roll_holder.clear
    roll_holder = game.die_multi_roller(6 - keepers.length)
    print "new dice -- #{roll_holder}"
    roll_count += 1
    print  "keepers -- #{keepers}"
  end
  print keepers




