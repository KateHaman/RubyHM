module FourtyTwo
  def fourty_two?
    self == 42
  end
end

class Integer
  include FourtyTwo
end
