require "spec helper"
require "deck"

describe Deck do

    let(:deck){Deck.new}

    describe "#initialize" do 
      describe "::create_deck" do 
        it "creates a deck of 52 cards" do 
            expect(deck.cards.length).to eq(52)
        end

        it "creates a deck of unique cards" do 
            expect(deck.cards.uniq).to eq(deck.cards)
        end

      end    
    end

end