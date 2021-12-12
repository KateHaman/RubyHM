module FortyTwo
  def forty_two?
    self == 42
  end
end

class Integer
  include FortyTwo
end
