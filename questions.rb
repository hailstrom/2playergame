 class InvalidAnswer < StandardError


 end
def generate_question(player)
  num1 = rand(1..20)
  num2 = rand(1..20)
  operator = '/'#["*", "/", "+", "-"].sample
  

  # if    operator == "*"
  # #we could say that num1 x num2 = correct_answer
  # #this is the end part of Ruby's method so it's
  # #going to return the result of whatever happens 
  # #in here check out next gray line
  #        num1 * num2 
  # elsif operator == "/"
  #        num1 / num2
  # elsif operator == "-"
  #        num1 - num2
  # elsif operator == "+" 
  #  #for example i could say correct_answer =
  #        num1 + num2 
  # else
  #
  # end
  answer = case operator
           when '+' then num1 + num2
           when '-' then num1 - num2
           when '*' then num1 * num2
           when '/'
            num1 = rand(1..10)    # makes it a bit easiers
            num2 = rand(1..10)
            tmp = num1            # need to save num1, since we're dividing by num2
            product = num1 * num2 # If we had 7 and 3 
            num1 = product        # num1 becomes 21 (7*3) and answer becomes num2 = 3
            tmp                   # "What is 21 / 3"
           end
  puts "#{player.name}, What is #{num1} #{operator} #{num2}"
  answer
end

def receive_answer
  begin
    answer = gets.chomp
    has_digits = answer.match(/-?\d+/) #this shows that it CAN (?) begin with a -, and checks if it has digits.
    if has_digits==nil
        raise InvalidAnswer, "Please enter numerics"
    else
        return answer 
     end
   
  # if has_digits
  #   answer
  # else
  #   puts "Input digits, please"
  #   nil # technically puts already returns nil, so this line is unnecessary
  # end
    rescue InvalidAnswer => e
      puts e.message 
      receive_answer
      
  end

  #return puts "Input digits please" unless has_digits
 #recieving answer
end

def compare_q_a(answer,correct_answer)
  answer.to_i == correct_answer.to_i #comparing answer to q
end



