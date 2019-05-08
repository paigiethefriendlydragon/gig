class Api::V1::MusiciansController < ApplicationController
  def index
    binding.pry
    render json: Musician.all
  end

  def show
    render json: Musician.find(params[:id])
  end
end
