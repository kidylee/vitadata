class TxnSerializer < ActiveModel::Serializer
  attributes :txnid, :from, :label, :to
  belongs_to :block
end
