class Item < ApplicationRecord
	validates :titlt, :description, :price, :presence => true
end
