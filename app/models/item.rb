class Item < ApplicationRecord

	validates :title, :description, :price, :presence => true
has_many :carts
	belongs_to :user
	belongs_to :order
	validates :title, :description, :decimal, :presence => true

end
