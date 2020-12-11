class PreferenceSerializer < ActiveModel::Serializer
  attributes :id, :theme, :date_format, :time_format
  has_one :user
end
