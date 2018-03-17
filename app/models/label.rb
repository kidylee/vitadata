class Label < ApplicationRecord
  belongs_to :user

  def as_json(option={})
    super(:only =>[:name])
  end
end
