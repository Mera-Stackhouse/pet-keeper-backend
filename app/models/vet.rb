class Vet < ApplicationRecord
  has_many :pets_vets
  has_many :pets, through: :pets_vets
end
