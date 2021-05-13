require "deck"

describe Deck do
    subject(:deck) {Deck.new}

    describe "#initialize" do
        it "should be of size 52" do
            expect(deck.size).to eq(52)
        end        
    end

    describe "#shuffle" do
        it "should shuffle the cards in the deck" do
            original = deck.send(:deck).dup
            deck.shuffle
            expect(deck.send(:deck)).not_to eq(original)
        end
    end

    describe "#draw" do
        it "should return the card at the top of the deck" do
            card = deck.send(:deck)[-1]
            expect(deck.draw).to be(card)
        end
    end
end