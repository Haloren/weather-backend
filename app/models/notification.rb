class Notification < ApplicationRecord
  belongs_to :user

  validates :event, presence: true
  validates :date, presence: true
end
