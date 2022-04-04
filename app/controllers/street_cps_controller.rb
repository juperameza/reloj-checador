class StreetCpsController < ApplicationController
  def new
      @streetCp = StreetCp.new
  end
  
  def create
    @streetCp = StreetCp.new(streetCp_params)

    if @streetCp.save
      redirect_to new_branch_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def streetCp_params
    params.require(:street_cp).permit(:street_name, :cp)
  end
end
