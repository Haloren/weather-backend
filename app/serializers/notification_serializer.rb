class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :event, :notes, :date, :user_id
  belongs_to :user
end
