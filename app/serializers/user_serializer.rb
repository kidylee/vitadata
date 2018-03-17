class UserSerializer < ActiveModel::Serializer
  attributes :address, :timestamp , :label, :encription
  belongs_to :block
  has_many :label
  has_many :encription
end
