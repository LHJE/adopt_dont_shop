class SheltersController < ApplicationController
  def index
    @shelters = ['Dumb Friends League', 'Denver Samoyed Rescue']
  end
end
