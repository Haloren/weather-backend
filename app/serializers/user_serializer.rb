class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_many :locations
  has_many :notifications
end