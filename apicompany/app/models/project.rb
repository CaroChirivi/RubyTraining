class Project < ApplicationRecord
    has_many :people

    validates :name, presence: true
    validates :name, uniqueness: true
end
