class Employee < ApplicationRecord
  has_one :office, dependent: :destroy
end
