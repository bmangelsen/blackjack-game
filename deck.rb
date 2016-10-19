require_relative './card.rb'

class Deck

  VALUE = (2..10).to_a + ["J", "Q", "K", "A"]
  SUIT = ["hearts", "spades", "clubs", "diamonds"]

  attr_accessor :game_deck

  def initialize
    @game_deck = []
      VALUE.each do |value|
      SUIT.each do |suit|
        @game_deck << Card.new(value, suit)
      end
    end
    @game_deck = game_deck.shuffle
  end

  def play_card
    game_deck.shift
  end
end
