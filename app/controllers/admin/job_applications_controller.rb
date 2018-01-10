class Admin::JobApplicationsController < ApplicationController
  before_action :authenticate_user!
  layout "admin"

  def index 
    @applications = Apply.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 15)
  end

  def show 
    @application = Apply.find(params[:id])
  end

end
