class Api::V1::PetsController < ApplicationController

  def create
    @pet = Pet.create(pet_params)
    if @pet.valid?
      PetsUser.create(user: @user , pet: @pet)
      render json: @user, status: :created
    else
      render json: { error: 'failed to create pet' }, status: :not_acceptable
    end
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      render json:  {pet: @pet}, status: :accepted
    else
      render json: { error: 'failed to update pet' }, status: :not_acceptable
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    render json: @user, status: :accepted
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :breed, :species, :gender, :img_url, :habits)
  end

end
