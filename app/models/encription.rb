class Encription < ApplicationRecord
  belongs_to :user
  def as_json(option={})
    super(:only =>[:name, :value],
    methods: [:timestamp])
  end

  def timestamp
    "#{created_at}"
  end
end
