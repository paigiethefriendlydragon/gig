class MusiciansController < ApplicationController

  def index
    @musicians = Musician.all

  end

  def show
    @musician = Musician.find(params[:id])
    render json: Musician.find(params[:id])
  end

end
