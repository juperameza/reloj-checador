class Employee < ApplicationRecord
  belongs_to :branch
  has_many :assistence

  def total_assistance
    Assistence.where(employee_id: self.id, clock_in: (Date.today.beginning_of_month..Date.today.end_of_month) ).count
  end

  def absences(id)
    Date.today.day - Assistence.where(employee_id: id, clock_in: (Date.today.beginning_of_month..Date.today.end_of_month) ).count
  end
end
