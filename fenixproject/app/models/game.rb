class Game < ApplicationRecord

    validates :name, :price, presence: true
    validates :price, numericality: true
    validates :description, length: { maximum: 250 }
end
