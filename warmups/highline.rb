require 'highline/import'

  # loves = ask "What do you love?"

  # feeling = ask "How are you today?" do |q|
  #   q.default = "good"
  # end

  # wants_candy = ask "Do you want <%= color('candy',RED) %>?" do |q|
  #   q.validate = /^(yes|no)$/
  # end

  # say "Your favorite color is <%= color('blue',BLUE) %>"



exercise = ask "Do you like to exercise?"

pump = ask "Do you like to pump iron?"

lift = ask "Do you like to lift weights?"

awake = ask "Do kittens purr?" do |q|
  q.validate = /^(yes|no)$/
end

push = ask "Do you like to do pushups?"

if awake == "yes"
  say "You are awake"
else
  say "Time for some coffee"
end