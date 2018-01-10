class Admin::SpecialsController < ApplicationController
  before_action :authenticate_user!
  layout "admin"

  def index 
    @specials = Special.all
  end

  def new
    @photo = Special.new
  end

  def edit
    @special = Special.find_by(id:params[:id])
    @photo = Special.new
  end

  def update 
    @special = Special.find_by(id:params[:id]) 

    @special.update(photo_params);

    redirect_to '/admin/specials'
  end


  def create
    @photo = Special.new(photo_params)
    if @photo.save
      flash[:success] = "The photo was added!"
      redirect_to '/admin/specials'
    else
      render 'new'
    end

  end

  def destroy 
    @special = Special.find(params[:id])

    @special.destroy

    redirect_to '/admin/specials'
  end

  private

  def photo_params
    params.require(:special).permit(:image, :name, :description)
  end


end
