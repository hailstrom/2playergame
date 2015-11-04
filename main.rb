require_relative 'questions.rb'
require_relative "Player.rb"

class UI  #this has been instantiated below!


def initialize
  @players = []
  puts "Playa 1 enta nams pls"
  @twatweasler = gets.chomp
  @players << Player.new(@twatweasler) 
  #first instance for first player to be called within
  #other class in other window
  puts "Player 2 enter your player name please and thanks"
  @name2 = gets.chomp
  @players << Player.new(@name2) 

  puts "Player, play on!"
  end

  def play!
   while @players.any? { |p| p.lives > 0 }
    @players.each do |player|
correct_answer = generate_question(player) ###LOOK AT THIS NOW AND LATER and how it connects elsewhere
answer = recieve_answer
if compare_q_a(answer,correct_answer)
      puts "You are correct" #gets LIVES IT LIVES
  else 
    puts "Nope, the answer is #{correct_answer}"
  end
end
    #above used to be this !@players.any? { |p| p.lives == 0 } ya dig??
   #if player1 answer = correct then +1 point
   #else -1 
  end
  end

end
game = UI.new #this is instantiating the class above, yo
game.play!
