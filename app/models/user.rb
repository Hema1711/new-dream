class User < ApplicationRecord
    has_many :user_addresses
	# has_many :addresses, through: :user_addresses, class_name: "user"
	# has_many :addresses, through: :user_addresses
	has_one :cart
	has_one :return
	has_many :orders
	has_many :deliveries
	has_many :cancellation

    mount_uploader :file_extension, ImageUploader
end


