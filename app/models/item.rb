class Item < ApplicationRecord
	has_many :orders
	has_many :users, :through => :order
	validates :title, :description, :price, presence: true
	mount_uploader :image, ImageUploader
end
