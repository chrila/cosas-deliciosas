class Brewery < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true

  def to_s
    name
  end
end
