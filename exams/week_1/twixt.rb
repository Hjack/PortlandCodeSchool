class Twixt

  def initializer (pound)
    @pound = pound
  end

  def self.shout (arg1,arg2)
    Twixt.shout(arg1,arg2)
  end

  def pound
    return @pound
  end
end