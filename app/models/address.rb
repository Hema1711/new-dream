class Address < ApplicationRecord
    has_many :user_addresses
	has_many :users, through: :user_addresses
	# belongs_to :city_village
	# belongs_to :district
	# belongs_to :state
	# belongs_to :country
end
