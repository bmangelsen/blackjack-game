class Card

FACECARDS = ["J", "Q", "K"]

  attr_accessor :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def card_value
    if FACECARDS.include?(value)
      10
    elsif value == "A"
      11
    else
      value
    end
  end
end
