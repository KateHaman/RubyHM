class Panda
    
    def initialize name
        @name = name
        @full = 10
        @energy = 10
        @mood = 10
        @love = 10
        @socialized = 10
        @hygiene = 10
        @tidy = 10
        @mouthHygiene = 10
        @fit = 10
        @HP = 10

        puts @name + ' was born.'
    end

    def feed
        puts @name + ' has been given bamboo.'
        @full = 10
        passageOfTime
    end

    def putToBed
        puts @name + ' is in bed.'
        puts @name + ' has bright dreams about childhood.'
        @energy = 10
        passageOfTime
    end

    def play
        puts @name + ' has been played with.'
        @mood = 10
        passageOfTime
    end

    def hug
        puts @name + ' is being hugged.'
        @love = 10
        passageOfTime
    end

    def speak
        puts @name + ' is allowed to speak to other pandas.'
        @socialized = 10
        passageOfTime
    end

    def wash
        puts @name + ' has been washed.'
        @hygiene = 10
        passageOfTime
    end

    def combOut
        puts @name + ' is being combed out. It is not easy... '
        puts  @name + ' hates being combed out and grumbles.'
        @tidy = 10
        passageOfTime
    end

    def brushTeeth
        puts @name + ' has the teeth brushed with the mouthwash.'
        puts @name + ' coughs as the taste of mouthwash is bitter.'
        @mouthHygiene = 10
        passageOfTime
    end

    def workOut
        puts  @name + ' tries to loose weight.'
        @fit = 10
        passageOfTime
    end

    def heal
        puts @name + ' is being healed.'
        @HP = 10
        passageOfTime
    end

    def check
        puts 'full:' + @full.to_s
        puts 'energy:' + @energy.to_s
        puts 'mood:' + @mood.to_s
        puts 'love:' + @love.to_s
        puts 'socialized:' + @socialized.to_s
        puts 'hygiene:' + @hygiene.to_s
        puts 'tidy:' + @tidy.to_s
        puts 'mouthHygiene:' + @mouthHygiene.to_s
        puts 'fit:' + @fit.to_s
        puts 'HP:' + @HP.to_s
    end

    def help 
        puts "Press 0 to check your pandagotchi"
        puts "Press 1 to feed your pandagotchi"
        puts "Press 2 to put to bed your pandagotchi"
        puts "Press 3 to play with your pandagotchi"
        puts "Press 4 to hug your pandagotchi"
        puts "Press 5 to let your pandagotchi speak to other pandas"
        puts "Press 6 to wash your pandagotchi"
        puts "Press 7 to comb out your pandagotchi"
        puts "Press 8 to brush the teeth of your pandagotchi"
        puts "Press 9 for your pandagotchi to work out"
        puts "Press 10 to heal your pandagotchi"
    end

    private
 
    def passageOfTime
        @full += rand(-5..5)
        checkIfFull
        @energy += rand(-5..5)
        checkIfSleepy
        @mood += rand(-10..10)
        checkMood
        @love += rand(-5..5)
        checkIfLoved
        @socialized += rand(-5..5)
        checkIfLonely
        @hygiene += rand(-5..5)
        checkIfDirty
        @tidy += rand(-5..5)
        checkIfTidy
        @mouthHygiene += rand(-5..5)
        checkMouthHygiene
        @fit += rand(-5..5)
        checkIfFit
        @HP += rand(-5..5)
        checkIfHealthy
        info
    end
    
    def checkIfFull
        if @full < 10 && @full > 2
            puts @name + ' asks for some more bamboo.'
        elsif @full <= 2  
            puts @name + ' is deadly hungry. It gets sophisticated and takes the monastic vows. '
            exit
        end
    end

    def checkIfSleepy
        if @energy < 10 && @energy > 2
            puts @name + ' is sleepy and needs some rest.'
        elsif @energy <= 2
            puts @name + ' wants to sleep badly Please put it to bed immediately.'
        end
    end

    def checkMood
        if @mood < 10 && @mood > 2
            puts @name + ' is bored. It wants to play.'
        elsif @mood <= 2
            puts @name + ' is aboout to get mad of being bored. Play with it!'
        end
    end

    def checkIfLoved
        if @love < 10 && @love > 2
            puts @name + ' feels a bit neglected. It needs some hugs.'
        elsif @love <= 2
            puts @name + ' is about to take the monastic vows. Hug it!'
        end
    end

    def checkIfLonely
        if @socialized < 10 && @socialized > 2
            puts @name + ' feels very strange in human society. Communicating with other pandas might make it feel better.'
        elsif @socialized <= 2 
            puts @name + ' becomes mad as nobody wants to listen to it. Allow it to talk to other pandas to calm down.'
        end
    end

    def checkIfDirty
        if @hygiene < 10 && @hygiene > 2
            puts @name + ' looks so dirty! It might be a good idea to take a shower.'
        elsif @hygiene <= 2
            puts @name + ' is getting stinky. Please wash it as soon as possible!'
        end
    end

    def checkIfTidy
        if @tidy < 10 && @tidy > 2
            puts @name + ' feels as if it is a Chewbacca. Comb it out!'
        elsif @tidy <= 2 
            puts @name + ' is about to get fleas. Please comb it out!' 
        end
    end

    def checkMouthHygiene
        if @mouthHygiene < 10 && @mouthHygiene > 2
            puts @name + ' gets such a smell from the mouth! Brushing teeth might help to get rid of it.'
        elsif @mouthHygiene <= 2
            puts @name + ' is not able to stand its mouth stinking. It drinks the mouthwash and joins the majority.'
            exit
        end
    end

    def checkIfFit
        if @fit < 10 && @fit > 2
            puts @name + ' gained some weight and feels uncomformable. Its high time to work out!'
        elsif @fit <= 2
            puts @name + ' becomes so heavy that its hard for it to move. Lets work out!'
        end
    end

    def checkIfHealthy
        if @HP < 10 && @HP >2
            puts @name + ' coughs and has a fever. Give it some medicine!'
        elsif @HP <= 2
            puts @name + ' feels miserable. Call 911 to heal it.'
        end
    end
  
    def info
        puts 'full:' + @full.to_s
        puts 'energy:' + @energy.to_s
        puts 'mood:' + @mood.to_s
        puts 'love:' + @love.to_s
        puts 'socialized:' + @socialized.to_s
        puts 'hygiene:' + @hygiene.to_s
        puts 'tidy:' + @tidy.to_s
        puts 'mouthHygiene:' + @mouthHygiene.to_s
        puts 'fit:' + @fit.to_s
        puts 'HP:' + @HP.to_s
    end
end
   
puts 'Please enter the name for your pandagotchi:'
name = gets.chomp
panda = Panda.new(name)

puts "Press 0 to check your pandagotchi"
puts "Press 1 to feed your pandagotchi"
puts "Press 2 to put to bed your pandagotchi"
puts "Press 3 to play with your pandagotchi"
puts "Press 4 to hug your pandagotchi"
puts "Press 5 to let your pandagotchi speak to other pandas"
puts "Press 6 to wash your pandagotchi"
puts "Press 7 to comb out your pandagotchi"
puts "Press 8 to brush the teeth of your pandagotchi"
puts "Press 9 for your pandagotchi to work out"
puts "Press 10 to heal your pandagotchi"
puts "Press 11 to be reminded 0-10"

command = gets.chomp
until command == 'exit' do
    case command
    when '0'
        panda.check
    when '1'
        panda.feed
    when '2'
        panda.putToBed
    when '3'
        panda.play
    when '4'
        panda.hug
    when '5'
        panda.speak
    when '6'
        panda.wash
    when '7'
        panda.combOut
    when '8'
        panda.brushTeeth
    when '9'
        panda.workOut
    when '10'
        panda.heal
    when '11'
        panda.help
    else
        puts 'Sorry. Please try pressing 1-10.'
    end
    command = gets.chomp
end