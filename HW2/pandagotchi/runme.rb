class Panda
  def initialize(name)
    @name = name
    @full = 10
    @energy = 10
    @mood = 10
    @love = 10
    @socialized = 10
    @hygiene = 10
    @tidy = 10
    @mouth_hygiene = 10
    @fit = 10
    @hp = 10

    puts "#{@name} was born."
  end

  def feed
    puts "#{@name} has been given bamboo."
    @full = 10
    passage_of_time
  end

  def put_to_bed
    puts "#{@name} is in bed."
    puts "#{@name} has bright dreams about childhood."
    @energy = 10
    passage_of_time
  end

  def play
    puts "#{@name} has been played with."
    @mood = 10
    passage_of_time
  end

  def hug
    puts "#{@name} is being hugged."
    @love = 10
    passage_of_time
  end

  def speak
    puts "#{@name} is allowed to speak to other pandas."
    @socialized = 10
    passage_of_time
  end

  def wash
    puts "#{@name} has been washed."
    @hygiene = 10
    passage_of_time
  end

  def com_out
    puts "#{@name} is being combed out. It is not easy..."
    puts  "#{@name} hates being combed out and grumbles."
    @tidy = 10
    passage_of_time
  end

  def brush_teeth
    puts "#{@name} has the teeth brushed with the mouthwash."
    puts "#{@name} coughs as the taste of mouthwash is bitter."
    @mouth_hygiene = 10
    passage_of_time
  end

  def work_out
    puts "#{@name} tries to loose weight."
    @fit = 10
    passage_of_time
  end

  def heal
    puts "#{@name} is being healed."
    @hp = 10
    passage_of_time
  end

  def check
    puts "full: #{@full}"
    puts "energy: #{@energy}"
    puts "mood: #{@mood}"
    puts "love: #{@love}"
    puts "socialized: #{@socialized}"
    puts "hygiene: #{@hygiene}"
    puts "tidy: #{@tidy}"
    puts "mouth hygiene: #{@mouth_hygiene}"
    puts "fit: #{@fit}"
    puts "hp: #{@hp}"
  end

  def help
    puts 'Press 0 to check your pandagotchi'
    puts 'Press 1 to feed your pandagotchi'
    puts 'Press 2 to put to bed your pandagotchi'
    puts 'Press 3 to play with your pandagotchi'
    puts 'Press 4 to hug your pandagotchi'
    puts 'Press 5 to let your pandagotchi speak to other pandas'
    puts 'Press 6 to wash your pandagotchi'
    puts 'Press 7 to comb out your pandagotchi'
    puts 'Press 8 to brush the teeth of your pandagotchi'
    puts 'Press 9 for your pandagotchi to work out'
    puts 'Press 10 to heal your pandagotchi'
  end

  private

  def passage_of_time
    @full += rand(-5..5)
    check_if_full
    @energy += rand(-5..5)
    check_if_sleepy
    @mood += rand(-5..5)
    check_mood
    @love += rand(-5..5)
    check_if_loved
    @socialized += rand(-5..5)
    check_if_lonely
    @hygiene += rand(-5..5)
    check_if_dirty
    @tidy += rand(-5..5)
    check_if_tidy
    @mouth_hygiene += rand(-5..5)
    check_mouth_hygiene
    @fit += rand(-5..5)
    check_if_fit
    @hp += rand(-5..5)
    check_if_healthy
    info
  end

  def check_if_full
    if @full < 10 && @full > 2
      puts "#{@name} asks for some more bamboo."
    elsif @full <= 2
      puts "#{@name} is deadly hungry. It gets sophisticated and takes the monastic vows."
      exit
    end
  end

  def check_if_sleepy
    if @energy < 10 && @energy > 2
      puts "#{@name} is sleepy and needs some rest."
    elsif @energy <= 2
      puts "#{@name} wants to sleep badly. Please put it to bed immediately."
    end
  end

  def check_mood
    if @mood < 10 && @mood > 2
      puts "#{@name} is bored. It wants to play."
    elsif @mood <= 2
      puts "#{@name} + ' is aboout to get mad of being bored. Play with it!"
    end
  end

  def check_if_loved
    if @love < 10 && @love > 2
      puts "#{@name} feels a bit neglected. It needs some hugs."
    elsif @love <= 2
      puts "#{@name} is about to take the monastic vows. Hug it!"
    end
  end

  def check_if_lonely
    if @socialized < 10 && @socialized > 2
      puts "#{@name} feels very strange in human society. Communicating with other pandas might make it feel better."
    elsif @socialized <= 2
      puts "#{@name} becomes mad as nobody wants to listen to it. Allow it to talk to other pandas to calm down."
    end
  end

  def check_if_dirty
    if @hygiene < 10 && @hygiene > 2
      puts "#{@name} looks so dirty! It might be a good idea to take a shower."
    elsif @hygiene <= 2
      puts "#{@name} is getting stinky. Please wash it as soon as possible!'"
    end
  end

  def check_if_tidy
    if @tidy < 10 && @tidy > 2
      puts "#{@name} feels as if it is a Chewbacca. Comb it out!"
    elsif @tidy <= 2
      puts "#{@name} is about to get fleas. Please comb it out!"
    end
  end

  def check_mouth_hygiene
    if @mouth_hygiene < 10 && @mouth_hygiene > 2
      puts "#{@name} gets such a smell from the mouth! Brushing teeth might help to get rid of it."
    elsif @mouth_hygiene <= 2
      puts "#{@name} is not able to stand its mouth stinking. It drinks the mouthwash and joins the majority."
      exit
    end
  end

  def check_if_fit
    if @fit < 10 && @fit > 2
      puts "#{@name} gained some weight and feels uncomformable. Its high time to work out!"
    elsif @fit <= 2
      puts "#{@name} becomes so heavy that its hard for it to move. Lets work out!"
    end
  end

  def check_if_healthy
    if @hp < 10 && @hp > 2
      puts "#{@name} coughs and has a fever. Give it some medicine!"
    elsif @hp <= 2
      puts "#{@name} feels miserable. Call 911 to heal it."
    end
  end

  def info
    puts "full: #{@full}"
    puts "energy: #{@energy}"
    puts "mood: #{@mood}"
    puts "love: #{@love}"
    puts "socialized: #{@socialized}"
    puts "hygiene: #{@hygiene}"
    puts "tidy: #{@tidy}"
    puts "mouth hygiene: #{@mouth_hygiene}"
    puts "fit: #{@fit}"
    puts "hp: #{@hp}"
  end
end

puts 'Please enter the name for your pandagotchi:'
name = gets.chomp
panda = Panda.new(name)

puts 'Press 0 to check your pandagotchi'
puts 'Press 1 to feed your pandagotchi'
puts 'Press 2 to put to bed your pandagotchi'
puts 'Press 3 to play with your pandagotchi'
puts 'Press 4 to hug your pandagotchi'
puts 'Press 5 to let your pandagotchi speak to other pandas'
puts 'Press 6 to wash your pandagotchi'
puts 'Press 7 to comb out your pandagotchi'
puts 'Press 8 to brush the teeth of your pandagotchi'
puts 'Press 9 for your pandagotchi to work out'
puts 'Press 10 to heal your pandagotchi'
puts 'Press 11 to be reminded 0-10'

command = gets.chomp
until command == 'exit'
  case command
  when '0'
    panda.check
  when '1'
    panda.feed
  when '2'
    panda.put_to_bed
  when '3'
    panda.play
  when '4'
    panda.hug
  when '5'
    panda.speak
  when '6'
    panda.wash
  when '7'
    panda.com_out
  when '8'
    panda.brush_teeth
  when '9'
    panda.work_out
  when '10'
    panda.heal
  when '11'
    panda.help
  else
    puts 'Sorry. Please try pressing 1-10. Press 11 to get help.'
  end
  command = gets.chomp
end
