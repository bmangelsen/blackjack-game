require 'minitest/autorun'
require 'minitest/pride'
require_relative './blackjack.rb'
require_relative './deck.rb'
require_relative './card.rb'

class BlackjackTest < Minitest::Test

VALUE = (2..10).to_a + ["J", "Q", "K", "A"]

  def self.test_order
      :alpha
  end

  def test_class_exists
    assert Blackjack
  end

  def test_dealer_draw_cards
    game = Blackjack.new(Deck.new)
    assert_equal game.player_cards.size, 2
    game.dealer_draw_card
    assert_equal game.dealer_cards.size, 3
  end

  def test_player_draw_cards
    game = Blackjack.new(Deck.new)
    assert_equal game.player_cards.size, 2
    game.player_draw_card
    assert_equal game.player_cards.size, 3
  end

  def test_dealer_total
    game = Blackjack.new(Deck.new)
    game.dealer_cards = [Card.new("A", "spades"), Card.new(4, "hearts")]
    assert_equal 15, game.dealer_total
  end

  def test_player_total
    game = Blackjack.new(Deck.new)
    game.player_cards = [Card.new(10, "hearts"), Card.new(7, "diamonds")]
    assert_equal 17, game.player_total
  end
end
