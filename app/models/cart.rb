class Cart < ApplicationRecord
	has_many :items, :through => :user

end
