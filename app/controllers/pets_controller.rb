class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new({
      image: params[:pet][:image],
      name: params[:pet][:name],
      age: params[:pet][:age],
      sex: params[:pet][:sex],
      shelter_id: params[:pet][:shelter_id]
      })
    binding.pry
    @pet.save
    if @pet.save
      flash[:notice] = "Successfully added new pet!"
    else
      flash[:alert] = "Error adding new pet!"
      render :new
    end
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    pet.update({
      image: params[:pet][:image],
      name: params[:pet][:name],
      age: params[:pet][:age],
      sex: params[:pet][:sex],
      shelter_id: params[:pet][:shelter_id]
      })
    @pet.save
    redirect_to "/pets/#{@pet.id}"
  end

  def destroy
    Pet.destroy(params[:id])
    redirect_to '/pets'
  end

  private

  #Permitted parameters when creating a photo. This is used for security reasons.
  def photo_params
    params.require(:photo).permit(:title, :image)
  end
end
