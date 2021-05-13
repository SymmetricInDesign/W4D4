require "towers"

describe Towers do
    let(:board){[[4,3,2,1],[],[]]}
    before(:each) do
        @towers = Towers.new
    end

    describe "#initialize" do
        it "should initialize the board" do
            expect(@towers.rods).to eq(board)
        end
    end

    describe "#move_disc" do
        it "should raise an error if there is no disc at that position" do
            expect{@towers.move_disc(1, 0)}.to raise_error(NoDiscError)
        end

        it "should raise an error if the destination is invalid" do
            @towers.move_disc(0, 1)
            expect{@towers.move_disc(0,1)}.to raise_error(InvalidDestinationError)
        end

        it "should correctly move disc" do 
            @towers.move_disc(0, 1)
            expect(@towers.rods).to eq([[4,3,2],[1],[]])
        end
    end

end
