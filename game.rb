require 'io/console' #this allows password to be used

class Game
  def play
    puts "1 or 2 players?"
    @player_number = gets.chomp
    if @player_number == "2"
      start
      player1
      @other = player2
      who_won
    else
      start
      player1
      @other = comp_turn
      who_won
    end

  end

  def start
    puts "Welcome to Rocks-Paper-Scissors"
  end

  def player1
    puts "Player 1: What will it be?"
    puts "Press 1 for rock"
    puts "Press 2 for paper"
    puts "Press 3 for scissors!"
    puts "press enter when you're done"
    @player1_guess = STDIN.noecho(&:gets).chomp.downcase #password, makes things invisible :o
    puts " ~~*~~  "
  end

  def player2
    puts "Player 2: What will it be?"
    puts "Press 1 for rock"
    puts "Press 2 for paper"
    puts "Press 3 for scissors!"
    puts "press enter when you're done"
    @player2_guess = STDIN.noecho(&:gets).chomp.downcase
  end

  def comp_turn
    options = ["1", "2", "3"]
    @computer_guess = options.sample
    puts "Computer chose: "
    if @computer_guess == "1"
      puts "rock"
    elsif @computer_guess == "2"
      puts "paper"
    else
      puts "scissors"
    end
  end

  def who_won
    if @player1_guess == @other
      puts "It's a tie!"
    elsif @player1_guess == "1" && @other == "3" ||
      @player1_guess == "2" && @other == "1" ||
      @player1_guess == "3" && @other == "2"
      puts "Player 1 wins!"
    else
      if @player_number == "2"
        puts "Player 2 wins!"
      else
        puts "The Computer Won! You lose!"
      end
    end

  end

end

current_game = Game.new
current_game.play
