class EncriptionSerializer < ActiveModel::Serializer
  attributes :name, :value, :timestamp
  belongs_to :user
end
