class HomeController < ApplicationController
  def index
  end

  def create
    @employee = Employee.find_by(private_number: params[:private_number])
    @employee ? @assistence = Assistence.find_by(employee_id: @employee.id, created_at: Time.current.all_day ) : nil
    if @employee.status
      if !@employee
        flash[:msg] = "Employee number not found"
        redirect_to root_path
      elsif @employee && !@assistence 
        @assistance = Assistence.new(employee_id:@employee.id,clock_in:Time.now.strftime("%H:%M"))
        @assistance.save
        flash[:msg] = "Check in registered at #{Time.now.strftime("%H:%M")}"
        redirect_to root_path
      elsif !@assistence.clock_out 
        @assistence.update_attribute(:clock_out, Time.now.strftime("%H:%M"))
        flash[:msg] = "Check out registered at #{Time.now.strftime("%H:%M")}"
        redirect_to root_path
      else 
        flash[:msg] = "<3 You are already registered, come back tomorrow <3"
        redirect_to root_path
      end
    else
      flash[:msg] = "Employee is not active"
      redirect_to root_path
    end
  end
end
