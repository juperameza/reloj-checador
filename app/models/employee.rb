class Employee < ApplicationRecord
  belongs_to :branch
  has_many :assistence

  def total_assistance
    Assistence.where(employee_id: self.id, clock_in: (Date.today.beginning_of_month..Date.today.end_of_month) ).count
  end

  def absences(id)
    Date.today.day - Assistence.where(employee_id: id, clock_in: (Date.today.beginning_of_month..Date.today.end_of_month) ).count
  end

    def average_time_in
    assistences = Assistence.where(employee_id: self.id).to_a
    array_dates = Array.new()

    assistences.each do |assitence|
      array_dates.push(assitence.clock_in.strftime("%k:%M:%S"))
    end

    average = avg_of_times(array_dates)
  end

  def average_time_out
    assistences = Assistence.where(employee_id: self.id).to_a
    array_dates = Array.new()

    assistences.each do |assitence|
      array_dates.push(assitence.clock_out.strftime("%k:%M:%S"))
    end

    average = avg_of_times(array_dates)
  end

  def avg_of_times(array_of_time)
  size = array_of_time.size
  avg_minutes = array_of_time.map do |x|
    hour, minute = x.split(':')
    total_minutes = hour.to_i * 60 + minute.to_i
  end.inject(:+)/size
  avg_minutes%60 >= 10 ? "#{avg_minutes/60}:#{avg_minutes%60}" : "#{avg_minutes/60}:0#{avg_minutes%60}"
  end
end


