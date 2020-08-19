class SheltersController < ApplicationController
  def index
    @shelters = Shelter.all
  end

  def new
  end

  def create

    shelter = Shelter.new({
      name: params[:shelter][:name],
      number_of_dogs: params[:shelter][:number_of_dogs]
      })

    shelter.save

    redirect_to '/shelters'
  end
end
