def generate_question(player)
  num1 = rand(1..20)
  num2 = rand(1..20)
  operator = ["*", "/", "+", "-"].sample
  

  puts "#{player.name}, What is #{num1} #{operator} #{num2}"
  if    operator == "*"
  #we could say that num1 x num2 = correct_answer
  #this is the end part of Ruby's method so it's
  #going to return the result of whatever happens 
  #in here check out next gray line
         num1 * num2 
  elsif operator == "/"
         num1 / num2
  elsif operator == "-"
         num1 - num2
  elsif operator == "+" 
   #for example i could say correct_answer =
         num1 + num2 
  end
end

def recieve_answer
  answer = gets.chomp  
  return answer #recieving answer
end

def compare_q_a(answer,correct_answer)
  answer.to_i == correct_answer.to_i #comparing answer to q
end



