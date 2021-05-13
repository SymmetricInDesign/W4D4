require_relative "card"

class Deck

    def initialize
        @deck = []


    end

    def shuffle

    end

    def size
        @deck.length
    end

    private
    attr_reader :deck

end