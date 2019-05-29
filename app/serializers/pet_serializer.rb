class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :species, :birthdate, :breed, :habits, :vaccination_dates, :medications, :appointments, :groomings, :user, :vets, :gender, :img_url
end
