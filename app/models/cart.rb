class Cart < ApplicationRecord
    has_many :houses

    def total_price
        houses.to_a.sum(&:price)
    end
end
