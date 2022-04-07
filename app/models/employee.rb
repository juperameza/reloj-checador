class Employee < ApplicationRecord
  belongs_to :branch
  has_many :assistence
  def absences(id)
    Date.today.day - Assistence.where(employee_id: id, clock_in: (Date.today.beginning_of_month..Date.today.end_of_month) ).count
  end
end
