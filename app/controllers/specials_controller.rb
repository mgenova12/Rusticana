class SpecialsController < ApplicationController

  layout "admin"

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

    redirect_to '/admin_panel'
  end


  def create

    @photo = Special.new(photo_params)
    if @photo.save
      flash[:success] = "The photo was added!"
      redirect_to '/admin_panel'
    else
      render 'new'
    end

  end

  private

  def photo_params
    params.require(:special).permit(:image, :name, :description)
  end


end
