class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def new
  end

  def create
    pet = Pet.new({
      image: params[:pet][:image],
      name: params[:pet][:name],
      age: params[:pet][:age],
      sex: params[:pet][:sex],
      shelter_id: params[:pet][:shelter_id]
      })
    pet.save

    redirect_to '/pets'
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    pet = Pet.find(params[:id])
    pet.update({
      image: params[:pet][:image],
      name: params[:pet][:name],
      age: params[:pet][:age],
      sex: params[:pet][:sex],
      shelter_id: params[:pet][:shelter_id]
      })
    pet.save
    redirect_to "/pets/#{pet.id}"
  end

  def destroy
    Pet.destroy(params[:id])
    redirect_to '/pets'
  end
end
