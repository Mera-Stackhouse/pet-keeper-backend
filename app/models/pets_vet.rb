class PetsVet < ApplicationRecord
  belongs_to :vet
  belongs_to :pet
end
