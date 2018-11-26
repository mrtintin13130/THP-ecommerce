class Order < ApplicationRecord
	has_one :user, :through => :items
	has_many :items

end
