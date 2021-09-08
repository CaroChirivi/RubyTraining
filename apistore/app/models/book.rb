class Book < ApplicationRecord
    validates :name, :price, :author, presence: true
    validates :category, inclusion: { in: %w(adventure romance scifi horror),
        message: "%{value} is not a valid platform" }
    validates :price, numericality: true
    validates :price, numericality: { greater_than_or_equal_to: 0 }
    validates :author, length: { in: 3..30 }
    validates :description, length: { maximum: 250 }
end
