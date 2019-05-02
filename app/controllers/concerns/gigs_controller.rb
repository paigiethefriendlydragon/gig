class GigsController < ApplicationController
  def index
    @employers = Employer.all
  end
end
