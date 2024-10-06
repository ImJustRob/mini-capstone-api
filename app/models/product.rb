class Product < ApplicationRecord
    validates :description, presence: true
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :price, numericality: { greater_than: 0}
    validates :description, presence: true
    
    belongs_to :supplier
    has_many :images
    has_many :category_products
    has_many :categories, through: :category_products

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
