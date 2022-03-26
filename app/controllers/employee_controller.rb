class EmployeeController < ApplicationController
  before_action :authenticate_admin!
  def index
    @employees = Employee.includes(:branch)
  end

end
