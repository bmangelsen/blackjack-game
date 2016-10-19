require 'minitest/autorun'
require 'minitest/pride'
require_relative './card.rb'

class CardTest < Minitest::Test

  def self.test_order
      :alpha
  end

  def test_class_exists
    assert Card
  end

  def test_card_value
    new_card = Card.new("A", "spades")
    assert_equal 11, new_card.card_value
  end

  def test_suit
    new_card = Card.new(6, "spades")
    assert_equal "spades", new_card.suit
  end

end
