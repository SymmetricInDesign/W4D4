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

        it "should return the array of pairs sorted dictionary-wise"


    end
end

