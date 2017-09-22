class Group < ApplicationRecord
	has_many :products, dependent: :destroy

	has_attached_file :picture, styles: { medium: '300x300>', thumb: '50x50' }, default_url: '/images/:style/missing.jpg'
  	validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

	accepts_nested_attributes_for :products
	
	validates :title, presence: true,
                    length: { minimum: 3 }

end
