class Product < ApplicationRecord
    validates :description, presence: true
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :price, numericality: { greater_than: 0}
    validates :description, presence: true
    
    belongs_to :supplier
    has_many :images
    Order belongs_to: :product
    Order belongs_to: :user
    Product has_many :orders
    User has_many :orders

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
