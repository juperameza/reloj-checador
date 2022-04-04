class Branch < ApplicationRecord
  belongs_to :street_cp
  has_many :employees
end
