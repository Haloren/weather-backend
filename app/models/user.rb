class User < ApplicationRecord
    has_many :locations, dependent: :destroy
    has_many :notifications, dependent: :destroy

    validates :email, presence: true, uniqueness: true
end
