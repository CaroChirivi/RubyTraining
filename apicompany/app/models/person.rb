class Person < ApplicationRecord
  belongs_to :project
  belongs_to :country
  belongs_to :rol
end
