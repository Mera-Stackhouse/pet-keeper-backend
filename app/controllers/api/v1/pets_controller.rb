class Api::V1::PetsController < ApplicationController

  def index
    @pets = Pet.all
    render json: @pets
  end

  def create
    @pet = Pet.create(pet_params)
    if @pet.valid?
      PetsUser.create(user: @user , pet: @pet)
      render json: @user, status: :created
    else
      render json: { error: 'failed to create pet' }, status: :not_acceptable
    end
  end

  def destroy
    #create an if state if the pet doesn't exits
    @pet = Pet.find(params[:id])
    @pet.destroy
    render json: @user, status: :accepted
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :breed, :species, :gender, :img_url)
  end

end
