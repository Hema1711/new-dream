class DeliveryLog < ApplicationRecord
    belongs_to :delivery, optional: true
end
