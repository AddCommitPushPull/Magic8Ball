#Ability to add more answers:
#Via easter egg question ("add_answers")
#Do not let them add the same answer if the eight ball already has that answer
#Ability to reset answers back to the original bank (hint: think arr.clone)
#Via easter egg question ("reset_answers")
#Ability to have eight ball print all answers
#Via easter egg question ("print_answers")
 
#Create a menu to handle all the functionality.
#Use classes to handle the Eight Ball Program and Answers.

require 'colorize'
require "pry"

def answers
  [
    "It is certain".green,
    "It is decidedly so".green,
    "Without a doubt".green,
    "Yes definitely".green,
    "You may rely on it".green,
    "As I see it, yes".green,
    "Most likely".green,
    "Outlook good".green,
    "Yes".green,
    "Signs point to yes".green,
    "Reply hazy try again".magenta,
    "Ask again later".yellow,
    "Better not tell you now".yellow,
    "Cannot predict now".magenta,
    "Concentrate and ask again".magenta,
    "Don't count on it".red,
    "My reply is no".red,
    "My sources say no".red,
    "Outlook not so good".yellow,
    "Very doubtful".red
  ]
end

def random_answer
  answers[Random.rand(answers.size)]
end

def shake_ball
  Array.new(1 + Random.rand(6)).map{ |e| "[shake]".white }.join(" ")
end

def wait_for_user
  question = gets.chomp
  goodbye if question == "q"
  # AddAnswer if question == "add_answer"
  poem if question == "poem"
end

def add_answer
  #nothing yet
end

def poem
  puts "
  Conditions Of Programming - Poem by Lawrence S. Pertillar
  Autoplay next video If you want to wear those shoes, 
  Put them on.
  There is no agreement of purposes, 
  In the first place.
  You will do as you wish.
  And I know this! 
  
  If you want to declare you are right, 
  When wrong stares me in the face.
  And you want me to believe, 
  What you perceive.
  Do it! 
  There is no argument.
  
  Whatever you choose to do from now on...
  That is up to you.
  Conditions of programming, 
  Have been accepted as they are! 
  You see things as you wish them to exist.
  And I choose to refrain from becoming a conformist.
  
  However...
  Let's come to admit, 
  We are both in conflict...
  With the current nonsense that is being dished! 
  And getting out of it provides neither one of us an exit! ".yellow
  sleep(4)
  exit

end

def goodbye
  puts "Very well then...".white
  puts "[ツ]".white
  sleep(2)
  exit(0)
end

def prompt
  "What is your question? [q to quit]".white
end

if __FILE__ == $0
  puts "Hello".white
  sleep(2)
  puts prompt

  while (true)
    wait_for_user
    puts shake_ball + " " + random_answer
  end
end
