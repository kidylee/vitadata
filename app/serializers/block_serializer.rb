class BlockSerializer < ActiveModel::Serializer
  attributes :height, :timestamp

  has_many :user
  has_many :txn

end
