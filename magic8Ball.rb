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
end

def add_answer
  
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
