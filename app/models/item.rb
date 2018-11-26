class Item < ApplicationRecord
	belongs_to :user
	belongs_to :order
	validates :title, :description, :decimal, :presence => true
end
