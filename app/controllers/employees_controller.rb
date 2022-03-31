class EmployeesController < ApplicationController
  before_action :authenticate_admin!

  def index
    @employees = Employee.includes(:branch)
  end

  def new
    @employee = Employee.new()
  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save

      redirect_to employees_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])

    if @employee.update(employee_params)
      redirect_to employees_path
    else
      render :edit, status: :unprocessable_entity
    end
  end
  private

  def employee_params
    params.require(:employee).permit(:name, :email, :private_number, :position, :branch_id)
  end
end
