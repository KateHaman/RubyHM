class Panda
  attr_reader :name, :hp, :full, :thirsty, :sleepy, :clean, :happy

  def initialize(name)
    @name = name
    @hp = 50
    @full = 50
    @thirsty = 50
    @sleepy = 50
    @clean = 50
    @happy = 50
  end

  def passage_of_time
    @hp -= 10 if @hp.positive? && @hp != 100
    @full -= 10 if @full.positive? && @full != 100
    @thirsty -= 10 if @thirsty.positive? && @thirsty != 100
    @sleepy -= 10 if @sleepy.positive? && @sleepy != 100
    @clean -= 10 if @clean.positive? && @clean != 100
    @happy -= 10 if @happy.positive? && @happy != 100
  end

  def please
    @happy += 90 if @happy == 10
    @happy += 80 if @happy == 20
    @happy += 70 if @happy == 30
    @happy += 60 if @happy == 40
    @happy += 50 if @happy == 50
    @happy += 40 if @happy == 60
    @happy += 30 if @happy == 70
    @happy += 20 if @happy == 80
    @happy += 10 if @happy == 90
    @happy += 0 if @happy == 100
  end

  def upset
    @happy -= 90 if @happy == 100
    @happy -= 80 if @happy == 90
    @happy -= 70 if @happy == 80
    @happy -= 60 if @happy == 70
    @happy -= 50 if @happy == 60
    @happy -= 40 if @happy == 50
    @happy -= 30 if @happy == 40
    @happy -= 20 if @happy == 30
    @happy -= 10 if @happy == 20
    @happy -= 0 if @happy == 10
  end

  def feed
    @full += 20 if @full <= 80
    passage_of_time
  end

  def drink
    @thirsty += 20 if @thirsty <= 80
    passage_of_time
  end

  def sleep
    @sleepy += 20 if @sleepy <= 80
    passage_of_time
  end

  def wash
    @clean += 20 if @clean <= 80
    passage_of_time
  end

  def play
    @happy += 20 if @happy <= 80
    passage_of_time
  end

  def comb
    upset
  end

  def hug
    please
  end

  def brush
    please
  end
end
