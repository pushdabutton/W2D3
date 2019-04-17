require_relative "card"

class Deck

    attr_reader :cards

    def self.create_deck 
        result = []
        
        Card.suits.each do |suit|
            Card.values.each do |val|
                result << Card.new(val, suit)
            end
        end
        result
    end

    def initialize(cards = Deck.create_deck)
        @cards = cards


    end

    

end