require 'minitest/autorun'
require 'minitest/pride'
require_relative './blackjack.rb'

class BlackjackTest < Minitest::Test

VALUE = (2..10).to_a + ["J", "Q", "K", "A"]

  def self.test_order
      :alpha
  end

  def test_class_exists
    assert Blackjack
  end

  def test_dealer_cards
    game = Blackjack.new(Deck.new)
    assert_equal VALUE.include?(game.dealer_card), true
  end

  def test_player_cards
    game = Blackjack.new(Deck.new)
    assert_equal VALUE.include?(game.player_card), true
  end    #sometimes fails, find out why

  def test_dealer_total
    game = Blackjack.new(Deck.new)
    cards = [7, 9]
    assert_equal 16, game.dealer_total(cards), true
  end

end
