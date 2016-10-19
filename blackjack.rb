require 'minitest/autorun'
require 'minitest/pride'
require_relative './deck.rb'
require_relative './card.rb'

class Blackjack

  attr_accessor :deck
  attr_accessor :dealer_cards
  attr_accessor :player_cards
  attr_accessor :play
  attr_accessor :move

  def initialize(deck)
    @deck = deck
    @dealer_cards = [deck.play_card, deck.play_card]
    @player_cards = [deck.play_card, deck.play_card]
    @play = ""
    @move = ""
  end

  def greeting
    puts "Welcome to blackjack! Would you like to play? (y/n)"
    player_play_response
  end

  def check_if_new_game
    puts "Would you like to play again?"
    player_play_response
  end

  def player_move
    puts "What's your move? (hit/stand)"
    player_move_response
  end

  def player_move_response
    move = gets.chomp
    until move.match("hit|stand")
      puts "Sorry, try again"
      move = gets.chomp
    end
    move
  end

  def player_play_response
    play = gets.chomp
    until play.match("y|n")
      puts "Sorry, try again"
      play = gets.chomp
    end
    play
  end

  def dealer_display_card
    puts "Dealer's visible card is:"
    puts "#{dealer_cards[1].value} of #{dealer_cards[1].suit}"
  end

  def dealer_display_all_cards
    puts "Dealer's cards are:"
    dealer_cards.each do |card|
      puts "#{card.value} of #{card.suit}"
    end
  end

  def player_display_cards
    puts "Your cards are:"
    player_cards.each do |card|
      puts "#{card.value} of #{card.suit}"
    end
  end

  def dealer_draw_card
    dealer_card = deck.play_card
    puts "Dealer drew the #{dealer_card.value} of #{dealer_card.suit}"
    dealer_cards << dealer_card
  end

  def player_draw_card
    player_card = deck.play_card
    puts "You drew the #{player_card.value} of #{player_card.suit}"
    player_cards << player_card
  end

  def display_dealer_total
    puts "Dealer's total is: #{dealer_total}"
  end

  def display_player_total
    puts "Your total is #{player_total}"
  end

  def dealer_total
    dealer_cards.reduce(0) { |acc, card| acc + card.card_value }
  end

  def player_total
    player_cards.reduce(0) { |acc, card| acc + card.card_value }
  end

  def player_wins
    puts "You win!"
  end

  def dealer_wins
    puts "You lose! Sorry!"
  end

  def tie
    puts "It's a tie!"
  end
end
