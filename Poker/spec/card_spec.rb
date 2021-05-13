require "card"

describe Card do
  describe "#initialize" do
    subject(:card) { Card.new(1, :clubs) }

    it "should initialize set number to instance variable" do
      expect(card.number).to eq(1)
    end

    it "should initialize set suit to instance variable" do
      expect(card.suit).to eq(:clubs)
    end

    it "should initialize set card value to instance variable" do
      expect(card.card_value).to eq("A")
    end
  end
end