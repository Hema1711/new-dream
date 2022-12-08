class DeliveryStatus < ApplicationRecord
    belongs_to :delivery, optional: true
end
