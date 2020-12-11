class Location < ApplicationRecord
  belongs_to :user

  validates :zip, presence: true
end
