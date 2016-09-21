class Service < ActiveRecord::Base
  belongs_to :customer
  belongs_to :pet
  has_many :relationships
  has_many :products, through: :relationships
end
