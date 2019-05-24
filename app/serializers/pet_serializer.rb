class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :type, :birthdate, :breed, :habits, :vaccination_dates, :medications, :appointments, :groomings, :user_id, :vet_id, :user, :vet
end
