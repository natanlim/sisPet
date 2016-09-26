class Customer < ActiveRecord::Base
	has_one :address
	accepts_nested_attributes_for :address
	has_many :pets, dependent: :destroy
	has_many :services, dependent: :destroy
end
