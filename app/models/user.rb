class User < ApplicationRecord
    has_many :locations
    has_many :notifications

    validates :email, presence: true, uniqueness: true
end
