require 'minitest/autorun'
require 'minitest/pride'
require_relative './deck.rb'
require_relative './card.rb'

class DeckTest < Minitest::Test

  def self.test_order
      :alpha
  end

  def test_class_exists
    assert Deck
  end

  def test_play_card
    game_deck = Deck.new
    assert_equal game_deck.play_card != game_deck, true
  end

  def test_shuffle
    game_deck_1 = Deck.new
    game_deck_2 = Deck.new
    assert_equal game_deck_1 != game_deck_2, true
  end


end
