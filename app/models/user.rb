class User < ApplicationRecord
    has_many :properties
    validates :name, :email, presence: true
    validates :email, presence: true

end
