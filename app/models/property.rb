class Property < ApplicationRecord
    belongs_to :user

    validates :address, :price, presence: true
end
