class Item < ApplicationRecord
	has_many :orders
	has_many :users, through: orders
	validates :title, :description, :price, presence: true
end
