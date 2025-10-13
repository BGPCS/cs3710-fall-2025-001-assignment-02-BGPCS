class Employee < ApplicationRecord
  has_one :office, dependent: :destroy
  accepts_nested_attributes_for :office
end
