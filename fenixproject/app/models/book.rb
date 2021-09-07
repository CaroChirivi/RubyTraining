class Book < ApplicationRecord
    validates :name, :price, :author, presence: true
    validates :price, numericality: true
    validates :author, length: { in: 3..30 }
    validates :description, length: { maximum: 250 }
end
