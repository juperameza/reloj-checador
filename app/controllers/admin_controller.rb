class AdminController < ApplicationController
  before_action :authenticate_admin!
  def login
  end
end
