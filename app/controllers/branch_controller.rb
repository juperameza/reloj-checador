class BranchController < ApplicationController
  before_action :authenticate_admin!

  def index
    @branches = Branch.includes(:street_cp)
  end
end
