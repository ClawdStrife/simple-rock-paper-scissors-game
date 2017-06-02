class Animal #classes start with capitals
  def initialize(speech)
    @speak = speech
  end

  def speak
    puts @speak
  end

  def breathe #methods go in all lower case
    puts "*Heavy breathing*"
  end

  def sleep
    puts "ZZZzzzZZZ"
  end

  def eat
    puts "OmNomNom"
  end

end

dino = Animal.new("Roar!")
  puts "My dinosaur says:"
dino.speak

cat = Animal.new("Meow!")
  puts "My cat says:"
cat.speak
