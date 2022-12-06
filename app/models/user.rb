class User < ApplicationRecord
    has_many :orders
	has_many :deliveries
    has_one :cart
    has_many :addresses

    mount_uploader :image, ImageUploader
end
