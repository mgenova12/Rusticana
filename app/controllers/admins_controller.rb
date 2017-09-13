class AdminsController < ApplicationController
  before_action :authenticate_user!
  layout "admin"

  def index 
    @specials = Special.all
  end

  def applications 
    @applications = Apply.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 15)
  end

  def applications_show 
    @application = Apply.find(params[:id])
  end

end
