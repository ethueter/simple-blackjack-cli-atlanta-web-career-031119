def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp 
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  initial_hand = deal_card + deal_card
  display_card_total(initial_hand)
  initial_hand
end

def hit?(card_total)
  if card_total < 21
    prompt_user
    input = get_user_input
  end
  if input == "s"
    card_total
    elsif input == "h"
    card_total += deal_card
    card_total
  else
    invalid_command
  end 
  
  
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  card_total = initial_round
  hit?(card_total)
  display_card_total(card_total)
  until card_total > 21 do 
    end_game
end
end
    
