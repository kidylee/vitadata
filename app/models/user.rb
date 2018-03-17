class User < ApplicationRecord
  belongs_to :block

  has_many :label
  has_many :encription


  def timestamp
    "#{created_at}"
  end
end
