class AdminsController < ApplicationController
  before_action :authenticate_user!

  def index 
    @specials = Special.all


    render layout: false
  end

end
