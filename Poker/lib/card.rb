class Card

    attr_reader :val, :suit

    def initialize (val, suit)
        @val = val
        @suit = suit
    end

    def self.suits
        suits = [:Heart, :Spade, :Diamond, :Club]
        suits
    end

    def self.values
        values = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
        values
    end

end

