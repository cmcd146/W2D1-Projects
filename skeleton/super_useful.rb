# PHASE 2
def convert_to_int(str)
  begin
    Integer(str) #'5' => 5
  rescue ArgumentError 
    puts "Invalid input. Returning nil"
    return nil
  end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
    raise StandardError 
  end 
end

def feed_me_a_fruit
  begin
    puts "Hello, I am a friendly monster. :)"

    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
  
    reaction(maybe_fruit) 
  rescue StandardError
    puts "Wrong fruit" 
    if maybe_fruit == 'coffee' 
      retry
    else
      puts "no retries"
    end
  end
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    raise "You don't have a name" if name.length <= 0
    @yrs_known = yrs_known
    raise "I haven't lmow you long enough to be besties!" if yrs_known < 5
    @fav_pastime = fav_pastime
    raise "You don't have a pastime." if fav_pastime.length <= 0
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known} years. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


