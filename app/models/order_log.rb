class OrderLog < ApplicationRecord
    belongs_to :order, optional: true
end
