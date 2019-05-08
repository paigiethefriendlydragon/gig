class Api::V1::GigsController < ApplicationController

  def index
      render json: Musician.all
    end


   def show
     render json: Musician.find(params[:id])
   end
end
