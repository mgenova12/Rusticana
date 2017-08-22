class AdminsController < ApplicationController
  before_action :authenticate_user!
  layout "admin"

  def index 
    @specials = Special.all

  end




end
