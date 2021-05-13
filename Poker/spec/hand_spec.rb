require "hand"

describe Hand do
    subject(:hand){Hand.new(Deck.new)}
    describe "#initialize" do

        it "should create a hand of 5 cards" do
            expect(hand.hand.length).to eq(5)
        end
    end

    describe "#hand_value" do

        it "should return a number"

        it "should return a unique number for each possible hand"

        it ""

    end

    describe "#get_card_matches" do
        it "should return a 2d array whose length is 5 or less when flattened" do
            expect(hand.get_card_matches.flatten.length <= 5).to be true
        end
    end

end