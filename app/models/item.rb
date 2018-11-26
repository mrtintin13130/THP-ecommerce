class Item < ApplicationRecord
	validates :title, :description, :price, :presence => true
	belongs_to :user
end
