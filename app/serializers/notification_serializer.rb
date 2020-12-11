class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :event, :notes, :date
  has_one :user
end
