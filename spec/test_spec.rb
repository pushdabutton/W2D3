require "rspec"
require "test"


describe "Array#My_Uniq" do

    let(:arr1) {[1, 2, 1, 3, 3]}
    let(:arr2) {[]}
    it "removes duplicates from arrays" do
        expect(arr1.my_uniq).to eq([1,2,3])
    end

    it "returns an array" do 
        expect(arr1.my_uniq.class).to be(Array)
    end

    it "returns an empty array if given an empty array" do
        expect(arr2.my_uniq).to eq([])
    end

end


describe "Array#Two_Sum" do

    let(:arr1) {[-1, 0, 2, -2, 1]}
    let(:arr2) {[1,2,3,4]}
    it "returns an array of pair index that equal target" do
        expect(arr1.two_sum).to eq([[0, 4], [2, 3]])
    end


    it "returns empty array if nothing sums to target" do
        expect(arr2.two_sum).to eq([])
    end

    it "returns an array" do 
        expect(arr1.my_uniq.class).to be(Array)
    end

end

describe "my_tranpose" do
    let(:cols) {[[0, 3, 6], [1, 4, 7], [2, 5, 8]]}
    let(:cols1) {[]} 

    it "returns a transposed version of the array" do
        expect(my_transpose(cols)).to eq([[0,1,2],[3,4,5],[6,7,8]])
    end

    it "returns an empty array if the argument is empty" do 
        expect(my_transpose(cols1)).to eq([])
    end

    it "has a perfect square number of elements" do 
        expect(Math.sqrt(cols.flatten.length)).to eq(3)
    end
end

describe "stock_picker" do
    let(:prices) {[5.0, 5.50, 5.25, 6.0, 7.0, 8.0]}
    let(:prices1) {[6.0, 8.0, 5.0, 5.5, 6.0, 7.5]}
    let(:prices2) {[]}

    it "returns an array of the best days to enter and exit trades" do
        expect(stock_picker(prices)).to eq([0,5])
    end

    it "returns an array with nil values if the argument is empty" do 
        expect(stock_picker(prices2)).to eq([nil, nil])
    end

    it "accepts an argument that is an array of numbers" do 
        expect(prices[0].class).to be(Float)
    end

    it "should have a buy day that comes before the sell day" do
        expect(stock_picker(prices1)).to eq([2,5])
    end
end