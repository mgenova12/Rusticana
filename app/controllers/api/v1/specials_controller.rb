class Api::V1::SpecialsController < ApplicationController

  def index 
    @specials = Special.all

    render 'index.json.jbuilder'
  end

end
