class Api::V1::SpecialsController < ApplicationController
  
  skip_before_filter  :verify_authenticity_token

  def index 
    @specials = Special.all

    render 'index.json.jbuilder'
  end

  def show 
    @special = Special.find_by(id: params[:id])

    render 'show.json.jbuilder'
  end

  def update
    @specials = Special.all

    @specials.update_all(
      selected:false
    )

    @special = Special.find_by(id: params[:id])
    
    @special.update!(
      selected: true
    )
    
  end

end
