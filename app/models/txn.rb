class Txn < ApplicationRecord
  belongs_to :block


  def to
    address.split(",")
  end
end
