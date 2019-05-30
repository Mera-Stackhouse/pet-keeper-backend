class Pet < ApplicationRecord
  has_many :pets_vets
  has_many :vets, through: :pets_vets

  has_many :pets_users
  has_many :users, through: :pets_users


  scope :order_by_date, -> { order(created_at: :asc, id: :asc) }
  default_scope {order_by_date}
end
