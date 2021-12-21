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

  def feed
    @full += 10 if @full < 100
    @happy += 10 if @happy < 100
    @hp += 10 if @hp < 100
    @thirsty -= 10 if @thirsty.positive?
    @sleepy -= 10 if @sleepy.positive?
    @clean -= 10 if @clean.positive?
  end

  def drink
    @thirsty += 10 if @thirsty < 100
    @full += 10 if @full < 100
    @hp += 10 if @hp < 100
    @clean += 10 if @clean < 100
    @happy -= 10 if @happy.positive?
    @sleepy -= 10 if @sleepy.positive?
  end

  def sleep
    @sleepy += 10 if @sleepy < 100
    @happy += 10 if @happy < 100
    @hp += 10 if @hp < 100
    @full -= 10 if @full.positive?
    @thirsty -= 10 if @thirsty.positive?
    @clean -= 10 if @clean.positive?
  end

  def wash
    @clean += 10 if @clean < 100
    @thirsty += 10 if @thirsty < 100
    @hp -= 10 if @hp.positive?
    @sleepy -= 10 if @sleepy.positive?
    @happy -= 10 if @happy.positive?
    @full -= 10 if @full.positive?
  end

  def play
    @happy += 10 if @happy < 100
    @hp -= 10 if @hp.positive?
    @full -= 10 if @full.positive?
    @thirsty -= 10 if @thirsty.positive?
    @sleepy -= 10 if @sleepy.positive?
    @clean -= 10 if @clean.positive?
  end

  def comb
    @happy -= 10 if @happy.positive?
    @clean += 10 if @clean < 100
    @sleepy -= 10 if @sleepy.positive?
    @hp -= 10 if @hp.positive?
  end

  def hug
    @happy += 10 if @happy < 100
    @clean += 10 if @clean < 100
    @hp += 10 if @hp < 100
    @full += 10 if @full < 100
    @thirsty += 10 if @thirsty < 100
    @sleepy += 10 if @sleepy < 100
  end

  def brush
    @happy += 10 if @happy < 100
    @clean += 10 if @clean < 100
    @hp += 10 if @hp < 100
  end
end
