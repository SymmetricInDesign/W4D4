require "card"

describe Card do
  describe "#initialize" do
    subject(:card) { Card.new(14, :clubs) }

    it "should set number to instance variable" do
      expect(card.number).to eq(14)
    end

    it "should set suit to instance variable" do
      expect(card.suit).to eq(:clubs)
    end

    it "should set card value to instance variable" do
      expect(card.card_value).to eq("A")
    end
  end
end