class Order < ApplicationRecord
    belongs_to :cart
    has_one :payment
	has_one :delivery
end
