class Product < ApplicationRecord
    validates :description, presence: true
    
    def is_discounted?
        if price <= 10
             return true 
        else
            return false
        end
    end

    def tax
        price * 0.09
    end

    def total
        tax + price 
    end
end
