# frozen_string_literal: true

class Person < ApplicationRecord
  belongs_to :project
  belongs_to :country
  belongs_to :rol

  validates :name, :person_type, :project_id, :country_id, :rol_id, presence: true
  validates :person_type, inclusion: { in: %w[Employee Customer],
                                       message: '%<value>s is not a valid person type' }

  scope :with_employee, -> { where(person_type: 'Employee') }
  scope :with_customer, -> { where(person_type: 'Customer') }
end