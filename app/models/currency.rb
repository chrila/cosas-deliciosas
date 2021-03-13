class Currency < ApplicationRecord
  validates :name, presence: true
  validates :code, presence: true
  validates :symbol, presence: true

  def to_s
    symbol
  end
end
