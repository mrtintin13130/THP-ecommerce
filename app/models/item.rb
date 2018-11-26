class Item < ApplicationRecord
	belongs_to :user
	validates :title, :description, :decimal, :presence => true
end
