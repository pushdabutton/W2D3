require "spec helper"
require "card"

describe Card do 
    
    let(:new_card) {(Card.new(4, :Heart))}
   
    describe "#initialize" do 
        it "should set card's value to passed argument" do
            expect(new_card.val).to eq(4)
        end

        it "should set card's value to passed argument" do
            expect(new_card.suit).to eq(:Heart)
        end
    end

    describe "#suits" do 
        it "should return an array of all possible suits" do
            expect(Card.suits.class).to be(Array)
        end
    end

    describe "#values" do 
        it "should return an array of all possible suits" do
            expect(Card.values.class).to be(Array)
        end
    end

    

end







