class Group < ApplicationRecord
	
	has_many :products, dependent: :destroy

	accepts_nested_attributes_for :products
	
	has_many :images, as: :imagable, inverse_of: :imagable

    accepts_nested_attributes_for :images, allow_destroy: true
end
