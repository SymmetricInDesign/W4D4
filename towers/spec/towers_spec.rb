require "towers"

describe Towers do
    describe "#initialize" do
        let(:board){[[4,3,2,1],[],[]]}
        before(:each) do
            @towers = Towers.new
        end
        it "should initialize the board" do
            expect(@towers.rods).to eq(board)
        end
    end



end
