require_relative "farkle_junk"

class Player

  def initialize
    @score = 0
    DiceTracker.play
  end

  def take_turn
    DiceTracker.play
  end
end


module DieRoller

  @rollreturner = [] #empty array to hold dice

  def self.roll
    rand(6)+1
  end

  def self.die_multi_roller(rolls_left) #returns number of dice left to roll
    rolls_left.times do
      @rollreturner.push(DieRoller.roll)
    end
    return @rollreturner
  end
end


module DiceTracker
  def self.play
    keepers = []
    roll_holder = DieRoller.die_multi_roller(6)
    roll_count = 0
    puts greeting

    while roll_count < 6 && keepers.length < 6 #player gets up to 6 rolls and can keep six "dice"
      puts "What dice do you want to keep?"
      print roll_holder

      roll_chooser = gets.chomp #get users input ( 1's will keep "dice", all others wont)
      roll_chooser = roll_chooser.split(//)[0..(5 - keepers.length)] # user input into array
      roll_chooser.map! { |w| w.to_i} #user input to integer

      roll_chooser.each_index do |x|
        if roll_chooser[x] == 1
            keepers.push(roll_holder[x]) #pushes all "keeps" to a new array based on position of index.
        end
      end
      roll_holder.clear #clears the holder array so we can use it for next round.
      roll_holder = DieRoller.die_multi_roller(6 - keepers.length) #rolls the dice left in round
      print  "\nkeepers -- #{keepers}\n\n"
      roll_count += 1
    end
  end
end
joe = Player.new

