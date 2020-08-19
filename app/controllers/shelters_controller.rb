class SheltersController < ApplicationController
  def index
    @shelters = ['Dumb Friends League', 'Denver Samoyed Rescue']
  end

  def new
  end

  def create
    shelter = Shelter.new({
      title: params[:shelter][:title],
      description: params[:shelter][:description]
      })

    shelter.save

    redirect_to '/shelters'
  end
end
