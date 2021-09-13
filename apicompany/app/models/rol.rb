# frozen_string_literal: true

class Rol < ApplicationRecord
  has_many :people

  validates :name, presence: true
  validates :name, uniqueness: true
end
