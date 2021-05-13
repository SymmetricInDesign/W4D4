require_relative "card"

class Deck
    def initialize
        @deck = []
        build_deck
        shuffle
    end

    def build_deck
        (2..14).each do |num|
            Card.suits.each do |suit|
                @deck << Card.new(num, suit)
            end
        end
    end

    def shuffle
        @deck.shuffle!
    end

    def size
        @deck.length
    end

    def draw
        @deck.pop
    end

    private
    attr_reader :deck
end