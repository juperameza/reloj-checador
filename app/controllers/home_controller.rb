class HomeController < ApplicationController
  #Si existe el numero privado del usuario
  #Registrar fecha de registro y mostrar mensaje de confirmacion
  #Sino existe, mostrar mensaje de error
  def index
    @assistance = Assistence.find_by(id: 1)
  end

  def create
    @employee = Employee.find_by(private_number: params[:private_number])
    if @employee
      @assistance = Assistence.new(employee_id:@employee.id,clock_in:Time.now.strftime("%H:%M"))
      @assistance.save
      flash[:msg] = "Assistance registered"
      redirect_to root_path
    else
      flash[:msg] = "Employee number not found"
      redirect_to root_path
    end
  end
end
