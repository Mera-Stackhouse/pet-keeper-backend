class VetSerializer < ActiveModel::Serializer
  attributes :id, :name, :clinic, :phone, :address
end
