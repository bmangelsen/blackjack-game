require 'minitest/autorun'    # => true
require 'minitest/pride'      # => true
require_relative './deck.rb'  # => true
require_relative './card.rb'  # => false

class Blackjack

FACECARDS = ["J", "Q", "K"]  # => ["J", "Q", "K"]

  attr_accessor :deck          # => nil
  attr_accessor :dealer_cards  # => nil
  attr_accessor :player_cards  # => nil
  attr_accessor :dealer_total  # => nil
  attr_accessor :player_total  # => nil

  def initialize(deck)
    @deck = deck
    @dealer_cards = []
    @player_cards = []
    @dealer_total = 0
    @player_total = 0
  end                   # => :initialize

  def dealer_card
    dealer_card = deck.play_card
      if FACECARDS.include?(dealer_card.value)
        dealer_card.value = 10
      elsif dealer_card.value == "A"
        dealer_card.value = 11
      else
        dealer_card.value
      end
    #dealer_cards << dealer_card.value           move array shovel somewhere else? also make method holing IF statement
  end                                           # => :dealer_card

  def player_card
    player_card = deck.play_card
      if FACECARDS.include?(player_card.value)
        player_card.value = 10
      elsif player_card.value == "A"
        player_card.value = 11
      else
        player_card.value
      end
    #player_cards << dealer_card.value
  end                                           # => :player_card

  def dealer_total(dealer_cards)
    dealer_cards.each do |card|
      dealer_total += card.value
    end
  end                             # => :dealer_total

  def player_total(player_cards)
    player_cards.each do |card|
      player_total += card.value
    end
  end                             # => :player_total

end  # => :player_total

# >> Run options: --seed 27302
# >>
# >> # Running:
# >>
# >>
# >>
# >> Finished in 0.000895s, 0.0000 runs/s, 0.0000 assertions/s.
# >>
# >> 0 runs, 0 assertions, 0 failures, 0 errors, 0 skips
