class Card
  CARD_VALUES = {
    1 => "A",
    2 => "2",
    3 => "3",
    4 => "4",
    5 => "5",
    6 => "6",
    7 => "7",
    8 => "8",
    9 => "9",
    10 => "10",
    11 => "J",
    12 => "Q",
    13 => "K"
  }.freeze

  attr_reader :number, :suit, :card_value
  def initialize(number, suit)
    @number, @suit = number, suit
    @card_value = CARD_VALUES[number]
  end
end