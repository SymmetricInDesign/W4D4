require_relative "card"
require_relative "deck"

class Hand
    attr_reader :hand
    def initialize(deck)
        @hand = []
        5.times {@hand << deck.draw}
    end



    def hand_value

    end

    def get_card_matches
        matches = []
        hash = Hash.new(0)
        @hand.each do |card|
            if !hash.has_key?(card.number)
                index = matches.length
                hash[card.number] = index
                matches << [card]
            else
                matches[hash[card.number]] << card
            end
        end
        matches
    end

    def check_for_flush
        suit = @hand[0].suit 
        @hand.all? {|card| card.suit == suit}
    end

    def check_for_straight
        duped_hand = @hand.dup.sort_by {|card| card.number}
        prev_card = duped_hand[0]
        duped_hand.each_with_index do |card, idx|
            next if idx==0
            return false if card.number != prev_card.number + 1
            prev_card = card
        end
        true
    end
end