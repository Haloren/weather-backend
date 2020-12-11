class LocationSerializer < ActiveModel::Serializer
  attributes :id, :zip
  has_one :user
end
