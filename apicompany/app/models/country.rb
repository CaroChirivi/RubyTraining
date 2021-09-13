# frozen_string_literal: true

class Country < ApplicationRecord
  has_many :people

  validates :name, presence: true
  validates :name, uniqueness: true
end
