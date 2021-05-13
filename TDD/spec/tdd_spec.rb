require "tdd"

describe Array do
    describe "#my_uniq" do
        it "does not raise an error if called on an array" do
            expect{[1,2,1,3,3].my_uniq}.not_to raise_error
        end

        it "properly removes all duplicate elements" do
            expect([1,2,1,3,3].my_uniq.sort).to eq([1,2,3])
        end

        it "returns the elements in order they first appeared" do
            expect([5,4,5,2,3].my_uniq).to eq([5,4,2,3])
        end
    end

    describe "#two_sum" do

        it "does not raise an error if called on an array" do
            expect{[1,2,1,3,3].two_sum}.not_to raise_error
        end

        it "should return all pairs of positions of elements that sum to zero" do
            expect([1,2,-2,3,-1,4].two_sum).to eq([[0,4], [1,2]])
        end

        it "should return each pair sorted by index ascending" do
            expect([1,2,-2,3,-1,4].two_sum).to eq([[0,4], [1,2]])
        end

        it "should return the array of pairs sorted dictionary-wise" do
            expect([1,2,-2,3,-1,4,-2].two_sum).to eq([[0,4], [1,2], [1,6]])
        end


    end


end

describe "#my_transpose" do
    subject(:grid) do 
        [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
        ]
    end

    it "should raise error if argument is not a matrix" do
        expect{my_transpose(" ")}.to raise_error(ArgumentError)
    end

    it "should properly transpose the matrix" do
        expect(my_transpose(grid)).to eq(grid.transpose)
    end

end

describe "#stock_picker" do
    subject(:stock_prices){
        {1 => 30,
        2 => 20,
        3 => 25,
        4 => 50,
        5 => 40,
        6 => 10}
    }

    it "raise error if stock_picker is not a hash" do
        expect{ stock_picker([1, 30], [2, 20]) }.to raise_error(ArgumentError)
        expect{ stock_picker(30) }.to raise_error(ArgumentError)
        expect{ stock_picker("30") }.to raise_error(ArgumentError)
        expect{ stock_picker(:thirty) }.to raise_error(ArgumentError)
        expect{ stock_picker(stock_prices) }.not_to raise_error
    end

    it "should return an array of length 2" do
        expect(stock_picker(stock_prices).length).to eq(2)
    end

    it "should return greatest profit" do
        expect(stock_picker(stock_prices)).to eq([2, 4])
    end
end

