class Block < ApplicationRecord
    has_many :user
    has_many :txn

    def timestamp
        "#{created_at}"
      end
end
